module ReactMUI.Jss where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type JssPropsO r = (
  "@global" :: Any {--"\"/home/jolz/git/material-ui/node_modules/@types/jss/css\".CSSProperties"--},
  extend :: String,
  composes :: OneOf ((
    typed :: String,
    typed :: Array String)) | r )
type JssPropsM  = (
)
foreign import jss :: forall a. IsTSRecord a (JssPropsO JssPropsM) JssPropsM => Function (Record a) ReactElement