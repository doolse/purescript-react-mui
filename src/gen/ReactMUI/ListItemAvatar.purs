module ReactMUI.ListItemAvatar where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type ListItemAvatarPropsO r = (
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})),
  className :: String,
  style :: Any {--React.CSSProperties<>--} | r )

type ListItemAvatarPropsM  = (
)

foreign import listItemAvatar :: forall a. IsTSRecord a (ListItemAvatarPropsO ListItemAvatarPropsM) ListItemAvatarPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

listItemAvatar_ :: Function (Array ReactElement) ReactElement
listItemAvatar_ = listItemAvatar {}