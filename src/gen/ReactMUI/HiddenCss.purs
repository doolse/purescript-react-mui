module ReactMUI.HiddenCss where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type HiddenCssPropsO r = (
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

type HiddenCssPropsM  = (
)

foreign import hiddenCss :: forall a. IsTSRecord a (HiddenCssPropsO HiddenCssPropsM) HiddenCssPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

hiddenCss_ :: Function (Array ReactElement) ReactElement
hiddenCss_ = hiddenCss {}