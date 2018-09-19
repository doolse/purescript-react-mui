module ReactMUI.ListItemSecondaryAction where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type ListItemSecondaryActionPropsO r = (
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})),
  className :: String,
  style :: Any {--React.CSSProperties<>--} | r )

type ListItemSecondaryActionPropsM  = (
)

foreign import listItemSecondaryAction :: forall a. IsTSRecord a (ListItemSecondaryActionPropsO ListItemSecondaryActionPropsM) ListItemSecondaryActionPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

listItemSecondaryAction_ :: Function (Array ReactElement) ReactElement
listItemSecondaryAction_ = listItemSecondaryAction {}