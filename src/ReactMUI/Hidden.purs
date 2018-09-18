module ReactMUI.Hidden where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type HiddenPropsO r = (
  implementation :: OneOf ((
    typed :: StringConst ("js"),
    typed :: StringConst ("css"))),
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
    typed :: Array (Any {--"\"/home/jolz/git/material-ui/packages/material-ui/src/styles/createBreakpoints\".Breakpoint"--}))),
  smDown :: Boolean,
  smUp :: Boolean,
  xlDown :: Boolean,
  xlUp :: Boolean,
  xsDown :: Boolean,
  xsUp :: Boolean,
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})),
  className :: String,
  style :: Any {--React.CSSProperties<>--} | r )
type HiddenPropsM  = (
)
foreign import hidden :: forall a. IsTSRecord a (HiddenPropsO HiddenPropsM) HiddenPropsM => Function (Record a) ReactElement