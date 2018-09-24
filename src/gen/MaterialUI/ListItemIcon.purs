module MaterialUI.ListItemIcon where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classListItemIcon :: forall a.ReactClass a

type ListItemIconPropsO r = (style :: Any{-- React.CSSProperties<>--},
  key :: OneOf ((typed :: Number,
  typed :: String)),
  classes :: Any{-- unknown--},
  innerRef :: OneOf ((typed :: Any{-- React.RefObject<any>--},
  typed :: String,
  typed :: Any -> Any)),
  className :: String | r)

type ListItemIconPropsM  = ()

listItemIcon :: forall a.IsTSEq (Record a) (OptionRecord (ListItemIconPropsO ListItemIconPropsM) ListItemIconPropsM)  => Record a -> ReactElement -> ReactElement
listItemIcon = unsafeCreateElement classListItemIcon

listItemIcon_ :: ReactElement -> ReactElement
listItemIcon_ = unsafeCreateElement classListItemIcon {}

listItemIcon' :: forall a.IsTSEq (Record a) (OptionRecord (ListItemIconPropsO ListItemIconPropsM) ListItemIconPropsM)  => Record a -> ReactElement
listItemIcon' = unsafeCreateLeafElement classListItemIcon