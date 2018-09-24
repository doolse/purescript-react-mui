module MaterialUI.ListItemSecondaryAction where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classListItemSecondaryAction :: forall a.ReactClass a

type ListItemSecondaryActionPropsO r = (style :: Any{-- React.CSSProperties<>--},
  key :: OneOf ((typed :: Number,
  typed :: String)),
  classes :: Any{-- unknown--},
  innerRef :: OneOf ((typed :: Any{-- React.RefObject<any>--},
  typed :: String,
  typed :: Any -> Any)),
  className :: String | r)

type ListItemSecondaryActionPropsM  = ()

listItemSecondaryAction :: forall a.IsTSEq (Record a) (OptionRecord (ListItemSecondaryActionPropsO ListItemSecondaryActionPropsM) ListItemSecondaryActionPropsM)  => Record a -> Array ReactElement -> ReactElement
listItemSecondaryAction = unsafeCreateElement classListItemSecondaryAction

listItemSecondaryAction_ :: Array ReactElement -> ReactElement
listItemSecondaryAction_ = unsafeCreateElement classListItemSecondaryAction {}

listItemSecondaryAction' :: forall a.IsTSEq (Record a) (OptionRecord (ListItemSecondaryActionPropsO ListItemSecondaryActionPropsM) ListItemSecondaryActionPropsM)  => Record a -> ReactElement
listItemSecondaryAction' = unsafeCreateLeafElement classListItemSecondaryAction