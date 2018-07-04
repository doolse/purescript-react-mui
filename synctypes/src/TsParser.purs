module TsParser where

import Prelude

import Control.Bind (bindFlipped)
import Data.Array (concat, unsafeIndex)
import Data.Filterable (filter, filterMap)
import Data.Function.Uncurried (Fn0, Fn2, runFn0, runFn2)
import Data.Maybe (Maybe(Nothing, Just), maybe)
import Data.Nullable (Nullable, toMaybe)
import Data.String (joinWith)
import Data.Tuple (Tuple(Tuple), fst, snd)
import Data.Unfoldable (fromMaybe) as U
import Debug.Trace (class DebugWarning, spy)
import Foreign.Object (Object)
import Foreign.Object as M
import Partial.Unsafe (unsafePartial)
import Unsafe.Coerce (unsafeCoerce)

foreign import ts :: Ts
foreign import parseConfig :: String -> ParseConfig
foreign import isDefined :: forall a. a -> Boolean
foreign import mapChildNodes :: forall a. (TsNode -> a) -> TsNode -> Array a
foreign import debugger :: String -> Unit
foreign import data TsOptions :: Type

data PsType = PsPrim String | PsFQ String String | PsUnknown String | PsParam PsType (Array PsType) |
  PsClass String String | PsFQWithClass String String String | PsTypeList (Array (Tuple String PsType)) (Maybe String) | PsTypeVar String
derive instance psPrimEq :: Eq PsType
derive instance psPrimOrd :: Ord PsType

data TsType = Prim String | TsUnion (Array TsType) | TsReference String String | TsIdentifier String
  | StringLiteral String | TsIntersection (Array TsType) | TsUnknown String

newtype PropsI = PropsI {
    name :: String,
    extends :: Object (Array TsType),
    members :: Object {o::Boolean, t::TsType}
}

type ParseConfig = {
    fileNames :: Array String,
    options :: TsOptions
}

type TsIdentifier = {
  kind :: Int,
  text :: String
}

type TsQualifiedName = {
  left :: TsIdentifier,
  right :: TsIdentifier
}

type TsNode = {
  kind :: Int,
  isDeclarationFile :: Boolean
}

type TsNodeAny r = {
  kind :: Int
  | r
}

type TsHeritageClause = {
  types :: Array TsExpressionWithTypeArguments
}

type TsExpressionWithTypeArguments = {
  expression :: TsNode,
  typeArguments :: Array TsNode
}

type TsInterfaceDeclaration = {
    members :: Array TsNode,
    heritageClauses :: Nullable (Array TsHeritageClause),
    name :: TsIdentifier
}

type TsPropertySignature = {
    kind :: Int,
    name :: TsIdentifier,
    "type" :: TsNode
}

type TsSymbol = {
    getName :: Fn0 String,
    exports :: String
}

type TsReference = {
  typeName :: TsNode
}

type TsTypeChecker = {
    getSymbolAtLocation :: TsIdentifier -> TsSymbol
}

type TsProgram = {
    getSourceFiles :: Fn0 (Array TsNode),
    getTypeChecker :: Fn0 TsTypeChecker
}


type Ts = {
    createProgram :: Fn2 (Array String) TsOptions TsProgram,
    isInterfaceDeclaration :: forall r. TsNodeAny r -> Boolean,
    isModuleDeclaration :: forall r. TsNodeAny r -> Boolean,
    isIdentifier :: forall r. TsNodeAny r -> Boolean,
    isQualifiedName :: forall r. TsNodeAny r -> Boolean,
    isStringLiteral :: forall r. TsNodeAny r -> Boolean,
    isLiteralTypeNode :: forall r. TsNodeAny r -> Boolean,
    isTypeReferenceNode :: forall r. TsNodeAny r -> Boolean,
    isUnionTypeNode :: forall r. TsNodeAny r -> Boolean,
    isIntersectionTypeNode :: forall r. TsNodeAny r -> Boolean,
    isPropertySignature :: forall r. TsNodeAny r -> Boolean,
    hasQuestionToken :: forall r. TsNodeAny r -> Boolean,
    "SyntaxKind" :: {
      "BooleanKeyword" :: Int,
      "StringKeyword" :: Int,
      "NumberKeyword" :: Int
    }
}

isBooleanKeyword :: TsNode -> Boolean
isBooleanKeyword n = ts."SyntaxKind"."BooleanKeyword" == n.kind

isStringKeyword :: TsNode -> Boolean
isStringKeyword n = ts."SyntaxKind"."StringKeyword" == n.kind

isNumberKeyword :: TsNode -> Boolean
isNumberKeyword n = ts."SyntaxKind"."NumberKeyword" == n.kind

instance showPsPrim :: Show PsType where
    show (PsPrim prim) = prim
    show (PsFQ modName name) = modName <> "." <> name
    show (PsParam t params) = show t <> " (" <> (joinWith " " $ show <$> params) <> ")"
    show (PsClass modName name) = "class " <> modName <> "." <> name
    show (PsFQWithClass modName name className) = show (PsFQ modName name) <> "::" <> show (PsClass modName className)
    show (PsUnknown unk) = unk
    show (PsTypeVar name) = "forall " <> name
    show (PsTypeList fields ext) = "(" <> (joinWith "," $ map (\fld -> fst fld <> "::" <> (show $ snd fld)) fields) 
      <> maybe "" (\t -> " | " <> t) ext

instance showPsType :: Show TsType where
    show (Prim p) = show p
    show (TsUnion a) = joinWith "|" $ map show a
    show (TsIntersection a) = joinWith "&" $ map show a
    show (TsReference fq n) = "FQN:" <> fq <> "." <> n
    show (TsIdentifier i) = "Identifier:" <> i
    show (TsUnknown u) = "unknownType:" <> u
    show (StringLiteral s) = "'" <> s <> "'"

instance showPropsI :: Show PropsI where
    show (PropsI {name,members}) = "type " <> name <> " {\n" <>
        (joinWith ",\n" $ showMember <$> M.toUnfoldable members)
        <> "\n}\n"
      where showMember (Tuple n {o,t}) = n <> " :: " <> show o <> " " <> show t


syntaxName :: forall r. TsNodeAny r -> String
syntaxName i = unsafePartial unsafeIndex ((unsafeCoerce ts)."SyntaxKind") (unsafeCoerce i).kind

readInterfaces :: String -> (String -> Boolean) -> Array PropsI
readInterfaces fname included = let
  config = parseConfig fname
  program = runFn2 ts.createProgram config.fileNames config.options
  checker = runFn0 program.getTypeChecker


  identifier :: TsIdentifier -> String
  identifier i = i.text

  decFiles = filter (_.isDeclarationFile) $ runFn0 program.getSourceFiles

  decodeType :: TsNode -> TsType
  decodeType n | isBooleanKeyword n = Prim "Boolean"
  decodeType n | isStringKeyword n = Prim "String"
  decodeType n | isNumberKeyword n = Prim "Number"
  decodeType n | ts.isStringLiteral n = StringLiteral (unsafeCoerce n).text
  decodeType n | ts.isLiteralTypeNode n = decodeType (unsafeCoerce n).literal
  decodeType n | ts.isTypeReferenceNode n = let
    ref = (unsafeCoerce n) :: TsReference
    fromFQN :: TsQualifiedName -> TsType
    fromFQN {left,right} = TsReference (identifier left) (identifier right)
    in case ref.typeName of
        n | ts.isIdentifier n -> TsIdentifier (identifier $ unsafeCoerce n)
        n | ts.isQualifiedName n -> fromFQN $ unsafeCoerce n
        n -> TsUnknown $ syntaxName n

  decodeType n | ts.isUnionTypeNode n = TsUnion $ decodeType <$> (unsafeCoerce n).types
  decodeType n | ts.isIntersectionTypeNode n = TsIntersection $ decodeType <$> (unsafeCoerce n).types
  decodeType n = TsUnknown $ syntaxName n



  visitInterface :: TsInterfaceDeclaration -> Maybe PropsI
  visitInterface n =
    let name = identifier n.name
    in if (included name)
    then let
      extender :: TsExpressionWithTypeArguments -> Tuple String (Array TsType)
      extender e | isDefined e.typeArguments = Tuple (identifier $ unsafeCoerce e.expression) $ decodeType <$> e.typeArguments
      extender e = Tuple (identifier $ unsafeCoerce e.expression) []

      extends = M.fromFoldable (extender <$> (maybe [] (bindFlipped _.types) $ toMaybe n.heritageClauses ))
      convertMember n = Tuple (identifier n.name) {o: ts.hasQuestionToken n, t:decodeType n."type"}
      members = M.fromFoldable $ convertMember <$> filterMap propsOnly n.members
      propsOnly node | ts.isPropertySignature node = Just (unsafeCoerce node :: TsPropertySignature)
      propsOnly _ = Nothing
      in Just $ PropsI {name, members, extends} else Nothing

  visit :: TsNode -> Array PropsI
  visit n = case n of
    _ | ts.isInterfaceDeclaration n -> U.fromMaybe $ visitInterface (unsafeCoerce n)
    n -> concat $ mapChildNodes visit n
  in concat $ concat $ map (mapChildNodes visit) decFiles
