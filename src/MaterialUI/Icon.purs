module MaterialUI.Icon where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.Color (class IsColor)
import MaterialUI.PropTypes (StandardPropsExt)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord, class IsProp)

foreign import iconClass :: forall props. ReactClass props

newtype IconColor = IconColor String
derive newtype instance isPropIconColor :: IsProp IconColor
instance iconColorIsColor :: IsColor IconColor
type IconProps r= Record  (

  | r
) 

type IconPropsExt r= StandardPropsExt  (
  color :: IconColor
  | r
) 

type IconPropsO = IconPropsExt  (

) 

action :: IconColor
action = IconColor "action"

contrast :: IconColor
contrast = IconColor "contrast"

disabled :: IconColor
disabled = IconColor "disabled"

error :: IconColor
error = IconColor "error"


iconU :: forall props. props -> Array ReactElement -> ReactElement
iconU = createElement iconClass

icon' :: Array (IProp IconPropsO) -> Array ReactElement -> ReactElement
icon' = mkPropRecord >>> iconU

icon_ :: Array ReactElement -> ReactElement
icon_ = iconU {}

