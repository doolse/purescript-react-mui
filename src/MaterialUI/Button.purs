module MaterialUI.Button where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.ButtonBase (ButtonBasePropsExt)
import MaterialUI.Color (class IsColor)
import MaterialUI.PropTypes (Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord, class IsProp)

foreign import buttonClass :: forall props. ReactClass props

newtype ButtonColor = ButtonColor String
derive newtype instance isPropButtonColor :: IsProp ButtonColor
instance buttonColorIsColor :: IsColor ButtonColor
type ButtonProps r= Record  (

  | r
) 

type ButtonPropsExt r= ButtonBasePropsExt  (
  color :: ButtonColor,
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  dense :: Boolean,
  disabled :: Boolean,
  disableFocusRipple :: Boolean,
  disableRipple :: Boolean,
  fab :: Boolean,
  href :: String,
  mini :: Boolean,
  raised :: Boolean,
  type :: String
  | r
) 

type ButtonPropsO = ButtonPropsExt  (

) 

contrast :: ButtonColor
contrast = ButtonColor "contrast"

dense :: forall r. Boolean -> IProp (dense :: Boolean | r)
dense = mkProp "dense"

disabled :: forall r. Boolean -> IProp (disabled :: Boolean | r)
disabled = mkProp "disabled"

disableFocusRipple :: forall r. Boolean -> IProp (disableFocusRipple :: Boolean | r)
disableFocusRipple = mkProp "disableFocusRipple"

disableRipple :: forall r. Boolean -> IProp (disableRipple :: Boolean | r)
disableRipple = mkProp "disableRipple"

fab :: forall r. Boolean -> IProp (fab :: Boolean | r)
fab = mkProp "fab"

href :: forall r. String -> IProp (href :: String | r)
href = mkProp "href"

mini :: forall r. Boolean -> IProp (mini :: Boolean | r)
mini = mkProp "mini"

raised :: forall r. Boolean -> IProp (raised :: Boolean | r)
raised = mkProp "raised"

buttonU :: forall props. props -> Array ReactElement -> ReactElement
buttonU = createElement buttonClass

button' :: Array (IProp ButtonPropsO) -> Array ReactElement -> ReactElement
button' = mkPropRecord >>> buttonU

button_ :: Array ReactElement -> ReactElement
button_ = buttonU {}

