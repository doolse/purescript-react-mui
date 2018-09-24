module MaterialUI.ListItemIcon where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import React (unsafeCreateElement, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classListItemIcon :: forall a. ReactClass a

type ListItemIconPropsO r = (
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

type ListItemIconPropsM  = (
)

listItemIcon :: forall a. IsTSEq (Record a) (OptionRecord (ListItemIconPropsO ListItemIconPropsM) ListItemIconPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
listItemIcon = unsafeCreateElement classListItemIcon

listItemIcon_ :: Function (Array ReactElement) ReactElement
listItemIcon_ = unsafeCreateElement classListItemIcon {}

listItemIcon' :: forall a. IsTSEq (Record a) (OptionRecord (ListItemIconPropsO ListItemIconPropsM) ListItemIconPropsM) => Function (Record a) ReactElement
listItemIcon' = unsafeCreateLeafElement classListItemIcon