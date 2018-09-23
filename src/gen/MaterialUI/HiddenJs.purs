module MaterialUI.HiddenJs where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import React (unsafeCreateElementDynamic, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classHiddenJs :: forall a. ReactClass a

type HiddenJsPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  initialWidth :: OneOf ((
    typed :: StringConst ("xs"),
    typed :: StringConst ("sm"),
    typed :: StringConst ("md"),
    typed :: StringConst ("lg"),
    typed :: StringConst ("xl"))),
  lgDown :: Boolean,
  lgUp :: Boolean,
  mdDown :: Boolean,
  mdUp :: Boolean,
  only :: OneOf ((
    typed :: StringConst ("xs"),
    typed :: StringConst ("sm"),
    typed :: StringConst ("md"),
    typed :: StringConst ("lg"),
    typed :: StringConst ("xl"),
    typed :: Array (Any {--"\"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/styles/createBreakpoints\".Breakpoint"--}))),
  smDown :: Boolean,
  smUp :: Boolean,
  xlDown :: Boolean,
  xlUp :: Boolean,
  xsDown :: Boolean,
  xsUp :: Boolean | r )

type HiddenJsPropsM  = (
)

hiddenJs :: forall a. IsTSEq (Record a) (OptionRecord (HiddenJsPropsO HiddenJsPropsM) HiddenJsPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
hiddenJs = unsafeCreateElementDynamic classHiddenJs

hiddenJs_ :: Function (Array ReactElement) ReactElement
hiddenJs_ = unsafeCreateElementDynamic classHiddenJs {}

hiddenJs' :: forall a. IsTSEq (Record a) (OptionRecord (HiddenJsPropsO HiddenJsPropsM) HiddenJsPropsM) => Function (Record a) ReactElement
hiddenJs' = unsafeCreateLeafElement classHiddenJs