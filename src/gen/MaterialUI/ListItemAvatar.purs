module MaterialUI.ListItemAvatar where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classListItemAvatar :: forall a. ReactClass a

type ListItemAvatarPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  classes :: Any {-- unknown--}, 
  innerRef :: OneOf (
    typed :: String, 
    typed :: Any -> Any, 
    typed :: Any {-- React.RefObject<any>--}
  ), 
  className :: String, 
  style :: Any {-- React.CSSProperties<>--}
 | r)

type ListItemAvatarPropsM  = (
)

listItemAvatar :: forall a. IsTSEq (Record a) (OptionRecord (ListItemAvatarPropsO ListItemAvatarPropsM) ListItemAvatarPropsM) => Record a -> Array ReactElement -> ReactElement
listItemAvatar = unsafeCreateElement classListItemAvatar

listItemAvatar_ :: Array ReactElement -> ReactElement
listItemAvatar_ = unsafeCreateElement classListItemAvatar {}

listItemAvatar' :: forall a. IsTSEq (Record a) (OptionRecord (ListItemAvatarPropsO ListItemAvatarPropsM) ListItemAvatarPropsM) => Record a -> ReactElement
listItemAvatar' = unsafeCreateLeafElement classListItemAvatar