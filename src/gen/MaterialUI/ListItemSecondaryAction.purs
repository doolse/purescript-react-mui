module MaterialUI.ListItemSecondaryAction where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import React (unsafeCreateElementDynamic, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classListItemSecondaryAction :: forall a. ReactClass a

type ListItemSecondaryActionPropsO r = (
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

type ListItemSecondaryActionPropsM  = (
)

listItemSecondaryAction :: forall a. IsTSEq (Record a) (OptionRecord (ListItemSecondaryActionPropsO ListItemSecondaryActionPropsM) ListItemSecondaryActionPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
listItemSecondaryAction = unsafeCreateElementDynamic classListItemSecondaryAction

listItemSecondaryAction_ :: Function (Array ReactElement) ReactElement
listItemSecondaryAction_ = unsafeCreateElementDynamic classListItemSecondaryAction {}

listItemSecondaryAction' :: forall a. IsTSEq (Record a) (OptionRecord (ListItemSecondaryActionPropsO ListItemSecondaryActionPropsM) ListItemSecondaryActionPropsM) => Function (Record a) ReactElement
listItemSecondaryAction' = unsafeCreateLeafElement classListItemSecondaryAction