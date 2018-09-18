module ReactMUI.ListItemIcon where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type ListItemIconPropsO r = (
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})),
  className :: String,
  style :: Any {--React.CSSProperties<>--} | r )
type ListItemIconPropsM  = (
)
foreign import listItemIcon :: forall a. IsTSRecord a (ListItemIconPropsO ListItemIconPropsM) ListItemIconPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)