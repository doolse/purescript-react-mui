module MaterialUI.ListItemAvatar where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import React (unsafeCreateElementDynamic, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classListItemAvatar :: forall a. ReactClass a

type ListItemAvatarPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function Any Any,
    typed :: Any {--React.RefObject<any>--})),
  className :: String,
  style :: Any {--React.CSSProperties<>--} | r )

type ListItemAvatarPropsM  = (
)

listItemAvatar :: forall a. IsTSEq (Record a) (OptionRecord (ListItemAvatarPropsO ListItemAvatarPropsM) ListItemAvatarPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
listItemAvatar = unsafeCreateElementDynamic classListItemAvatar

listItemAvatar_ :: Function (Array ReactElement) ReactElement
listItemAvatar_ = unsafeCreateElementDynamic classListItemAvatar {}

listItemAvatar' :: forall a. IsTSEq (Record a) (OptionRecord (ListItemAvatarPropsO ListItemAvatarPropsM) ListItemAvatarPropsM) => Function (Record a) ReactElement
listItemAvatar' = unsafeCreateLeafElement classListItemAvatar