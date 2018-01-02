module MaterialUI.ButtonBase where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped, EventHandler)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)
import Prelude (Unit)

foreign import buttonBaseClass :: forall props. ReactClass props


type ButtonBaseProps r= Record  (

  | r
) 

type ButtonBasePropsExt r= StandardPropsExt  (
  centerRipple :: Boolean,
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  disableRipple :: Boolean,
  focusRipple :: Boolean,
  keyboardFocusedClassName :: String,
  onKeyboardFocus :: Untyped {-React.FocusEventHandler-},
  rootRef :: Untyped {-React.Ref-},
  onClick :: EventHandler (Unit)
  | r
) 

type ButtonBasePropsO = ButtonBasePropsExt  (

) 


centerRipple :: forall r. Boolean -> IProp (centerRipple :: Boolean | r)
centerRipple = mkProp "centerRipple"

disableRipple :: forall r. Boolean -> IProp (disableRipple :: Boolean | r)
disableRipple = mkProp "disableRipple"

focusRipple :: forall r. Boolean -> IProp (focusRipple :: Boolean | r)
focusRipple = mkProp "focusRipple"

keyboardFocusedClassName :: forall r. String -> IProp (keyboardFocusedClassName :: String | r)
keyboardFocusedClassName = mkProp "keyboardFocusedClassName"

onKeyboardFocus :: forall r. Untyped -> IProp (onKeyboardFocus :: Untyped | r)
onKeyboardFocus = mkProp "onKeyboardFocus"

rootRef :: forall r. Untyped -> IProp (rootRef :: Untyped | r)
rootRef = mkProp "rootRef"

onClick :: forall r. EventHandler (Unit) -> IProp (onClick :: EventHandler (Unit) | r)
onClick = mkProp "onClick"

buttonBaseU :: forall props. props -> Array ReactElement -> ReactElement
buttonBaseU = createElement buttonBaseClass

buttonBase' :: Array (IProp ButtonBasePropsO) -> Array ReactElement -> ReactElement
buttonBase' = mkPropRecord >>> buttonBaseU

buttonBase_ :: Array ReactElement -> ReactElement
buttonBase_ = buttonBaseU {}

