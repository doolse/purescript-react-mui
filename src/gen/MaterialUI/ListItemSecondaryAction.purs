module MaterialUI.ListItemSecondaryAction where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classListItemSecondaryAction :: forall a. ReactClass a

type ListItemSecondaryActionPropsO r = (
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

type ListItemSecondaryActionPropsM  = (
)

listItemSecondaryAction :: forall a. IsTSEq (Record a) (OptionRecord (ListItemSecondaryActionPropsO ListItemSecondaryActionPropsM) ListItemSecondaryActionPropsM) => Record a -> Array ReactElement -> ReactElement
listItemSecondaryAction = unsafeCreateElement classListItemSecondaryAction

listItemSecondaryAction_ :: Array ReactElement -> ReactElement
listItemSecondaryAction_ = unsafeCreateElement classListItemSecondaryAction {}

listItemSecondaryAction' :: forall a. IsTSEq (Record a) (OptionRecord (ListItemSecondaryActionPropsO ListItemSecondaryActionPropsM) ListItemSecondaryActionPropsM) => Record a -> ReactElement
listItemSecondaryAction' = unsafeCreateLeafElement classListItemSecondaryAction