module MaterialUI.ButtonBase where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import buttonBaseClass :: forall props. ReactClass props

type ButtonBaseProps r = {


  | r
}

type ButtonBasePropsO = (
  centerRipple :: Boolean,
  disableRipple :: Boolean,
  focusRipple :: Boolean,
  keyboardFocusedClassName :: String
--  component :: UNION["String",FQN:React.ComponentType],
--  onKeyboardFocus :: React.FocusEventHandler,
--  rootRef :: React.Ref
)

buttonBaseU :: forall props. props -> Array ReactElement -> ReactElement
buttonBaseU = createElement buttonBaseClass

buttonBase' :: forall o. Optional o ButtonBasePropsO => ButtonBaseProps o -> Array ReactElement -> ReactElement
buttonBase' = buttonBaseU

