module ReactMUI.Hello where
import Data.TSCompat (Any)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type HelloPropsO r = (
  name :: String,
  innerRef :: Any {--any--},
  theme :: Any {--interface "/home/jolz/git/material-ui/packages/material-ui/src/styles/createMuiTheme".Theme--} | r )
type HelloPropsM  = (
  width :: Any {--"\"/home/jolz/git/material-ui/packages/material-ui/src/styles/createBreakpoints\".Breakpoint"--},
  classes :: Any {--unknown--})
foreign import hello :: forall a. IsTSRecord a (HelloPropsO HelloPropsM) HelloPropsM => Function (Record a) ReactElement