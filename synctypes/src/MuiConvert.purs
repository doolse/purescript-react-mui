module MuiConvert where

import Prelude

import Control.MonadZero (guard)
import Data.Array (fold, foldr, groupBy, head, mapMaybe, nub, null, sortWith)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NEA
import Data.Either (Either(..), fromRight)
import Data.Filterable (filterMap, partitionMap)
import Data.List (List(..))
import Data.List as L
import Data.Maybe (Maybe(Nothing, Just), fromMaybe, isJust, maybe)
import Data.Monoid (class Monoid, mempty)
import Data.Set as S
import Data.String (Pattern(Pattern), Replacement(Replacement), drop, indexOf, joinWith, replace, take, toLower, toUpper)
import Data.String.Regex (Regex, parseFlags, regex, replace', test)
import Data.String.Regex.Flags (noFlags)
import Data.Tuple (Tuple(..), fst, snd)
import Debug.Trace (trace)
import Foreign.Object as M
import Partial.Unsafe (unsafePartial)
import TsParser (PropsI(PropsI), PsType(..), TsType(..))

type CompDetails = {
    moduleName :: String,
    name :: String,
    require :: Maybe {pkg::String, prop::String},
    canHaveChildren :: Boolean
}

type REnum = {parents::Array PsType, labels::Array String}
data RPropType = Std PsType | StringEnum REnum | Children

newtype PsPropDef = PsPropDef {
    name :: String,
    typeVars :: Array String,
    extensionVar :: Maybe String,
    extends :: Array {x::PsType,vars::Array String},
    members :: M.Object PsType
}

unitPs :: PsType
unitPs = PsFQ "Prelude" "Unit"

recordPrim :: PsType
recordPrim = PsPrim "Record"

eventFQ :: PsType
eventFQ = PsFQ "MaterialUI.Event" "Event"

eventHandler :: PsType -> PsType
eventHandler o = PsParam (propTypes "EventHandler") [o]

isPropClass :: PsType
isPropClass = PsClass "MaterialUI.Properties" "IsProp"

propertiesFQ :: String -> PsType
propertiesFQ = PsFQ "MaterialUI.Properties"

stdColor :: PsType -> PsType 
stdColor t = PsParam (propTypes "StdColor") [t]

enumType :: PsType -> PsType 
enumType p = PsParam (propertiesFQ "Enum") [p]

typeList :: Array (Tuple String PsType) -> PsType 
typeList flds = PsTypeList flds Nothing

mkPropFunc :: PsType
mkPropFunc = propertiesFQ "mkProp"

mkPropRecordFunc :: PsType
mkPropRecordFunc = propertiesFQ "mkPropRecord"

iPropType :: PsType
iPropType = propertiesFQ "IProp"

propTypes :: String -> PsType
propTypes = PsFQ "MaterialUI.PropTypes"

propWithClass :: String -> String -> PsType
propWithClass = PsFQWithClass "MaterialUI.PropTypes"

reactElementType :: PsType
reactElementType = PsFQ "React" "ReactElement"

reactClassType :: PsType
reactClassType = PsFQ "React" "ReactClass"

createElementFunc :: PsType
createElementFunc = PsFQ "React" "unsafeCreateElement"

unsafeFunc :: PsType
unsafeFunc = PsFQ "Unsafe.Coerce" "unsafeCoerce"

reactType :: PsType
reactType = propWithClass "ReactType" "IsReactType"

reactNode :: PsType
reactNode = propWithClass "ReactNode" "IsReactNode"

commonProps :: S.Set String
commonProps = S.fromFoldable ["color", "type", "component", "inputProps", "variant", "onClick", 
  "onChange", "onOpen", "onClose", "onDelete", "onKeyDown", "onKeyUp"]

newtype ReactProps = ReactProps {details::CompDetails,
  defs :: Array PsPropDef, enums :: Array REnum }

instance showPsProps :: Show PsPropDef where
    show (PsPropDef {name,members}) = "type " <> name <> " {\n" <>
        (joinWith ",\n" $ showMember <$> M.toUnfoldable members)
        <> "\n}\n"
      where showMember (Tuple n t) = n <> " :: " <> show t

instance showReactProps :: Show ReactProps where
    show (ReactProps {details,defs}) = show details.name <> "\n" <> show defs

unknownType :: PsType -> Boolean
unknownType (PsUnknown _) = true
unknownType _ = false

nameWithPrefix :: M.Object String -> PsType -> String
nameWithPrefix m =
  let doField (Tuple name t) = escapeLabel name <> " :: " <> recurse true t 
      recurse topLevel t = case t of
        (PsPrim p) -> p
        (PsClass modName name) -> dofq modName name
        (PsFQ modName name) -> dofq modName name
        (PsParam first params) | topLevel -> joinWith " " $ [recurse false first] <> (recurse false <$> params)
        param@(PsParam _ _) -> "(" <> recurse true param <> ")"
        (PsUnknown un) -> "Untyped"
        (PsFQWithClass modName name _) -> dofq modName name
        (PsTypeVar v) -> v
        (PsTypeList fields extvar) -> let exts = maybe "" (\v -> " | " <> v) extvar in "(" <> (joinWith ", " $ doField <$> fields) <> exts <> ")"
  in recurse true
  where 
    dofq mn n = fromMaybe "" (M.lookup mn m) <> n

toPsString :: String -> String
toPsString l = "\"" <> l <> "\""

okLabelRegex :: Regex
okLabelRegex = unsafePartial fromRight $ regex "^[a-z]\\w*$" noFlags

camelHyphen :: Regex 
camelHyphen = unsafePartial fromRight $ regex "-([a-z])" $ parseFlags "ig"

escapeFunc :: String -> String 
escapeFunc l = lowerFirst $ unsafePartial $ replace' camelHyphen (\_ [a] -> toUpper a) l

escapeLabel :: String -> String
escapeLabel l | test okLabelRegex l = l
escapeLabel l = toPsString $ l

upperFirst :: String -> String
upperFirst name = toUpper (take 1 name) <> drop 1 name

lowerFirst :: String -> String
lowerFirst name = toLower (take 1 name) <> drop 1 name

isChildren :: RPropType -> Boolean
isChildren Children = true
isChildren _ = false

moduleSource :: ReactProps -> {purs::String,js::Maybe String}
moduleSource (ReactProps {details:{moduleName,name,require,canHaveChildren},defs,enums}) = let
    lname = lowerFirst name
    enumMember m = Tuple m (PsPrim "t")

    packageMap = M.empty
    qualType = nameWithPrefix packageMap
    enumImport {parents} = [unsafeFunc] <> parents

    allMemberFuncs = (filterMap memberFunc (defs >>= memberFuncList))

    allReffed = (enumImport =<< enums) <> (S.toUnfoldable $ S.fromFoldable $ defs >>= typeOnly) <> (_.imports =<< allMemberFuncs <> commFuncs)

    typeToImport p | unknownType p = [ Tuple "MaterialUI.PropTypes" "Untyped"]
    typeToImport (PsFQ modName name) | modName /= "Prelude" = [ Tuple modName name ]
    typeToImport (PsClass modName name) = [ Tuple modName ("class " <> name)]
    typeToImport (PsFQWithClass modName name className) = [ Tuple modName name ]
    typeToImport (PsParam t params) = typeToImport t <> (typeToImport =<< params)
    typeToImport _ = []

    asImportString :: NonEmptyArray (Tuple String String) -> String
    asImportString a = let {head: (Tuple modName name), tail} = NEA.uncons a 
      in "import " <> modName <> " (" <> (joinWith ", " $ nub $ [name] <> (snd <$> tail)) <> ")"

    imports = joinWith "\n" $ map asImportString $ groupBy (\a b -> eq (fst a) (fst b)) $
                sortWith fst $ typeToImport =<< allReffed

    enumFuncs {labels} = let
      funcDef str = let func = escapeFunc str 
        in func <> " :: forall r. Enum (" <> escapeLabel str <> " :: String | r )\n" <>
        func <> " = unsafeCoerce " <> toPsString str <> "\n"
      in joinWith "\n" $ map funcDef labels

    memberFunc :: Tuple String PsType -> Maybe {f::String, imports::Array PsType}
    memberFunc (Tuple n v) = let
      propTypeString = qualType v
      propTypeParam = case v of
        (PsUnknown _) -> " a. a"
        (PsFQWithClass modName _ className) -> " a. " <> qualType (PsFQ modName className) <> " a => a"
        _ -> ". " <> propTypeString
      coerce = if case v of
          (PsFQWithClass modName name _) -> true
          (PsUnknown _) -> true
          _ -> false
        then " <<< (unsafeCoerce :: a -> " <> propTypeString <> ")" else ""
      funcName = case n of
        o | S.member o commonProps -> Nothing
        o -> Just $ lowerFirst o
      imports = [mkPropFunc, iPropType] <> case v of
        (PsUnknown _) -> [unsafeFunc]
        (PsFQWithClass modName _ className) -> [unsafeFunc, PsClass modName className]
        _ -> []
      withName name =
        let f = name <> " :: forall r" <> propTypeParam <> " -> IProp (" <> escapeLabel n <> " :: " <> propTypeString <> " | r)\n" <>
                  name <> " = mkProp " <> toPsString n <> coerce <> "\n"
        in {f,imports}
      in map withName funcName

    memberList :: PsPropDef -> String
    memberList (PsPropDef {name,members,extends,typeVars,extensionVar}) = let
       memberString (Tuple n p) = let
        typeStr = qualType p
        fullTypStr = if unknownType p then "Untyped {-" <> show p <> "-}" else typeStr
        in "  " <> escapeLabel n <> " :: " <> fullTypStr
       typeExtend = fromMaybe "" $ (<>) "\n  | " <$> extensionVar
       typeVarDec v | M.isEmpty members = "(" <> v <> " :: # Type)"
       typeVarDec v = v
       allMemString = (joinWith ",\n" $ memberString <$> M.toUnfoldable members) <> typeExtend
       extendStr Nil 0 = "(\n" <> allMemString <> "\n)"
       extendStr Nil _ = "\n" <> allMemString <> "\n"
       extendStr (Cons {x,vars} t) i = qualType x <> " " <> (joinWith " " vars) <> "(" <> extendStr t (i+1) <> ")"
       in "type " <> name <> " " <> (joinWith " " $ (typeVarDec <$> typeVars) <> ["= "]) <>
          (extendStr (L.fromFoldable extends) 0) <> " " <> "\n"

    memberFuncList (PsPropDef {members}) = M.toUnfoldable members

    commFuncs = let
      unsafeFunc = {f:
        "foreign import " <> lname <> "Class :: forall props. ReactClass {|props}\n\n" <>
        lname <> "U :: forall props. {|props} -> Array ReactElement -> ReactElement\n" <>
                      lname <> "U = unsafeCreateElement " <> lname <> "Class\n", imports: [reactElementType, createElementFunc, reactClassType]}
      childrenType = if canHaveChildren then "Array ReactElement -> " else ""
      extraArgs = if canHaveChildren then "" else " >>> (#) []"
      normalFunc = {f: lname <> " :: Array (IProp " <> name <> "Props) -> " <> childrenType <> "ReactElement\n" <>
          lname <> " = mkPropRecord >>> " <> lname <> "U" <> extraArgs <> "\n", imports:[reactElementType,mkPropRecordFunc, iPropType] }
      ignoreFunc = guard canHaveChildren $>
        {f: lname <> "_ :: Array ReactElement -> ReactElement\n" <>
            lname <> "_ = " <> lname <> "U {}", imports:[]}
      in do
        guard (isJust require)
        [unsafeFunc, normalFunc] <> ignoreFunc

    purs = "module " <> moduleName <> "." <> name <> " where\n\n" <>
      "-- This file is autogenerated from the typescript binding\n\n" <>
      "import Prelude\n" <>
      imports <> "\n\n" <>
      joinWith "\n" (memberList <$> defs) <> "\n" <>
      joinWith "\n" (enumFuncs <$> enums) <> "\n" <>
      joinWith "\n" (_.f <$> allMemberFuncs <> commFuncs) <> "\n"

    makeJs {pkg,prop} = "exports." <> lname <> "Class = require('" <> pkg <> "')." <> prop <> ";"
    in {purs, js: makeJs <$> require}

  where
    typeOnly (PsPropDef {members, extends}) = (M.values members) <> (_.x <$> extends)

psTypeOnly :: RPropType -> Maybe PsType
psTypeOnly (Std pst) = Just pst
psTypeOnly (StringEnum {parents, labels}) = 
  let labelList = typeList $ (flip Tuple (PsPrim "String")) <$> labels
  in Just $ enumType $ foldr (\p c -> (PsParam p [c])) labelList parents
psTypeOnly Children = Nothing

enumOnly :: RPropType -> Maybe REnum
enumOnly (StringEnum en) = Just en
enumOnly _ = Nothing

stringLiteralVal :: TsType -> Maybe String
stringLiteralVal (StringLiteral s) = Just s
stringLiteralVal _ = Nothing

makeEnum :: String -> String -> Array TsType -> Maybe REnum
makeEnum modName propName types = case partitionMap parentOrLiteral types of
  {left:[Just parent], right:labels} -> Just {parents:[parent], labels}
  {left:[],right:labels} | not $ null labels -> Just {parents:[], labels}
  _ -> Nothing
  where
  parentOrLiteral (TsReference "PropTypes" "Color") = Left $ Just $ propTypes "StdColor" 
  parentOrLiteral (TsIdentifier "Style") = Left $ Just $ propTypes "TextStyle" 
  parentOrLiteral ts | Just l <- stringLiteralVal ts = Right l
  parentOrLiteral _ = Left $ Nothing

reactEventType :: String -> TsType -> Maybe PsType
reactEventType event acType = case indexOf (Pattern "on") event of 
  Just 0 ->   case acType of 
    TsReference "React" o | Just _ <- indexOf (Pattern "EventHandler") o -> Just eventFQ
    TsUnknown "FunctionType" -> Just unitPs
    unknownEvent -> trace {unknownEvent} \_ -> Nothing 

  _ -> Nothing

tsWithCtxToPs :: String -> String -> TsType -> RPropType
tsWithCtxToPs _ "children" _ = Children
tsWithCtxToPs m event acType | Just et <- reactEventType event acType = Std $ eventHandler et
tsWithCtxToPs m p (TsUnion types) | Just strEnum <- makeEnum m p types = StringEnum strEnum
tsWithCtxToPs _ _ tst = Std $ tsTypeToPs tst

tsTypeToPs :: TsType -> PsType
tsTypeToPs (Prim "Number") = PsPrim "Int"
tsTypeToPs (Prim p) = PsPrim p
tsTypeToPs (TsReference "PropTypes" "Color") = enumType $ stdColor (PsTypeList [] Nothing)
tsTypeToPs (TsReference "React" "ReactType") = reactType
tsTypeToPs (TsReference "React" "ReactNode") = reactNode
tsTypeToPs (TsReference "React" "ReactElement") = reactElementType
tsTypeToPs (TsReference m n) = PsUnknown $ m <> "." <> n
tsTypeToPs (TsUnion others) = PsUnknown $ "UNION" <> show others
tsTypeToPs t = PsUnknown (show t)

newtype PsExt = PsExt {exts :: Array PsType, extMembers :: Array (Tuple String {o::Boolean, t::RPropType})}

instance psSG :: Semigroup PsExt where 
  append (PsExt {exts:xa, extMembers: ma}) (PsExt {exts:xb, extMembers: mb}) = PsExt {exts:xa <> xb, extMembers: ma <> mb}

instance psMon :: Monoid PsExt where 
  mempty = PsExt {exts:[], extMembers:[]}

tsToPsProps :: PropsI -> CompDetails -> ReactProps
tsToPsProps (PropsI {name:iname, members, extends}) details = let
    convMember (Tuple n {o,t}) = Tuple n {o, t:tsWithCtxToPs details.name n t}
    convMembers = convMember <$> (M.toUnfoldable members)
    enums = filterMap (enumOnly <<< _.t <<< snd) convMembers

    parentRec o = PsExt {exts: [o], extMembers:[]}

    parent (TsIdentifier "ButtonBaseProps") = parentRec $ PsFQ "MaterialUI.ButtonBase" "ButtonBasePropsExt"
    parent (TsIdentifier "PaperProps") = parentRec $ PsFQ "MaterialUI.Paper" "PaperPropsExt" 
    parent (TsIdentifier "SwitchBaseProps") = parentRec $ PsFQ "MaterialUI.SwitchBase" "SwitchBasePropsExt" 
    parent (TsIdentifier "InputProps") = parentRec $ PsFQ "MaterialUI.Input" "InputPropsExt" 
    parent (TsIdentifier "PopoverProps") = parentRec $ PsFQ "MaterialUI.Popover" "PopoverPropsExt" 
    parent (TsIdentifier "ModalProps") = parentRec $ PsFQ "MaterialUI.Modal" "ModalPropsExt" 
    parent (TsIdentifier "TransitionProps") = parentRec $ PsFQ "MaterialUI.Transition" "TransitionPropsExt" 
    parent (TsReference "React" "ButtonHTMLAttributes") = PsExt {exts:[], extMembers:[Tuple "onClick" {o:true, t: Std $ eventHandler eventFQ}]}
    parent (TsIntersection multi) = fold (parent <$> multi)
    parent unknownParent = trace {unknownParent} \_ -> mempty

    convertExtends (Tuple "StandardProps" spParams) | Just firstType <- head spParams = case parent firstType of 
      PsExt {exts:[], extMembers} -> PsExt {exts:[propTypes "StandardPropsExt"], extMembers}
      o -> o 
    convertExtends (Tuple "TransitionProps" []) = PsExt {exts: [PsFQ "MaterialUI.Transition" "TransitionPropsExt"], extMembers:[]}
    convertExtends o = trace o \_ -> PsExt {exts:[], extMembers:[]}

    PsExt {exts,extMembers} = fold $ (convertExtends <$> M.toUnfoldable extends) :: Array PsExt

    convProps extensible extends name p = let
      Tuple extensionVar typeVars = if extensible then Tuple (Just "r") ["r"] else Tuple Nothing []
      members = M.fromFoldable $ mapMaybe member p
      member (Tuple n {t}) = (Tuple n) <$> psTypeOnly t
      in PsPropDef {name, members, extensionVar, typeVars, extends:{x:_,vars:[]} <$> extends }

  in ReactProps { details, enums, defs: [
                    convProps true exts (iname <> "Ext") (convMembers <> extMembers),
                    convProps false [(PsPrim $ iname <> "Ext")] (iname) []
                    ] }

