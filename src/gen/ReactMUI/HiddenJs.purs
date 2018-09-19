module ReactMUI.HiddenJs where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type HiddenJsPropsO r = (
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
    typed :: Array (Any {--"\"/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/styles/createBreakpoints\".Breakpoint"--}))),
  smDown :: Boolean,
  smUp :: Boolean,
  xlDown :: Boolean,
  xlUp :: Boolean,
  xsDown :: Boolean,
  xsUp :: Boolean | r )

type HiddenJsPropsM  = (
)

foreign import hiddenJs :: forall a. IsTSRecord a (HiddenJsPropsO HiddenJsPropsM) HiddenJsPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

hiddenJs_ :: Function (Array ReactElement) ReactElement
hiddenJs_ = hiddenJs {}