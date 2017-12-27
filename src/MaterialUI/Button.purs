module MaterialUI.Button where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)
import MaterialUI.PropTypes (Color)

foreign import buttonClass :: forall props. ReactClass props

type ButtonProps r = {


  | r
}

type ButtonPropsO = (
  color :: Color,
  dense :: Boolean,
  disabled :: Boolean,
  disableFocusRipple :: Boolean,
  disableRipple :: Boolean,
  fab :: Boolean,
  href :: String,
  mini :: Boolean,
  raised :: Boolean,
  type :: String
--  component :: UNION["String",FQN:React.ComponentType]
)

buttonU :: forall props. props -> Array ReactElement -> ReactElement
buttonU = createElement buttonClass

button' :: forall o. Optional o ButtonPropsO => ButtonProps o -> Array ReactElement -> ReactElement
button' = buttonU

