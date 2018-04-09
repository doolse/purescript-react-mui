module MaterialUI.SwitchBase where

-- This file is autogenerated from the typescript binding

import Prelude
import MaterialUI.PropTypes (StandardPropsExt, Untyped, ReactNode, class IsReactNode)
import MaterialUI.Properties (mkProp, IProp)
import Unsafe.Coerce (unsafeCoerce)

type SwitchBasePropsExt r = StandardPropsExt (
  checked :: Untyped {-UNION["Boolean","String"]-},
  checkedIcon :: ReactNode,
  defaultChecked :: Boolean,
  disabled :: Boolean,
  disableRipple :: Boolean,
  icon :: ReactNode,
  indeterminate :: Boolean,
  indeterminateIcon :: ReactNode,
  inputProps :: Untyped {-React.InputHTMLAttributes-},
  inputRef :: Untyped {-React.Ref-},
  name :: String,
  onChange :: Untyped {-unknownType:FunctionType-},
  tabIndex :: Int,
  value :: String
  | r
) 

type SwitchBaseProps = SwitchBasePropsExt (

) 


checked :: forall r a. a -> IProp (checked :: Untyped | r)
checked = mkProp "checked" <<< (unsafeCoerce :: a -> Untyped)

checkedIcon :: forall r a. IsReactNode a => a -> IProp (checkedIcon :: ReactNode | r)
checkedIcon = mkProp "checkedIcon" <<< (unsafeCoerce :: a -> ReactNode)

defaultChecked :: forall r. Boolean -> IProp (defaultChecked :: Boolean | r)
defaultChecked = mkProp "defaultChecked"

disabled :: forall r. Boolean -> IProp (disabled :: Boolean | r)
disabled = mkProp "disabled"

disableRipple :: forall r. Boolean -> IProp (disableRipple :: Boolean | r)
disableRipple = mkProp "disableRipple"

icon :: forall r a. IsReactNode a => a -> IProp (icon :: ReactNode | r)
icon = mkProp "icon" <<< (unsafeCoerce :: a -> ReactNode)

indeterminate :: forall r. Boolean -> IProp (indeterminate :: Boolean | r)
indeterminate = mkProp "indeterminate"

indeterminateIcon :: forall r a. IsReactNode a => a -> IProp (indeterminateIcon :: ReactNode | r)
indeterminateIcon = mkProp "indeterminateIcon" <<< (unsafeCoerce :: a -> ReactNode)

inputRef :: forall r a. a -> IProp (inputRef :: Untyped | r)
inputRef = mkProp "inputRef" <<< (unsafeCoerce :: a -> Untyped)

name :: forall r. String -> IProp (name :: String | r)
name = mkProp "name"

onChange :: forall r a. a -> IProp (onChange :: Untyped | r)
onChange = mkProp "onChange" <<< (unsafeCoerce :: a -> Untyped)

tabIndex :: forall r. Int -> IProp (tabIndex :: Int | r)
tabIndex = mkProp "tabIndex"

value :: forall r. String -> IProp (value :: String | r)
value = mkProp "value"

