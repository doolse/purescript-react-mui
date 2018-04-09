module MaterialUI.Radio where

-- This file is autogenerated from the typescript binding

import Prelude
import MaterialUI.PropTypes (ReactNode, class IsReactNode)
import MaterialUI.Properties (IProp, mkProp, mkPropRecord, Enum)
import MaterialUI.SwitchBase (SwitchBasePropsExt)
import React (ReactElement, createElement, ReactClass)
import Unsafe.Coerce (unsafeCoerce)

type RadioPropsExt r = SwitchBasePropsExt (
  checkedIcon :: ReactNode,
  color :: Enum (primary :: String, secondary :: String, default :: String),
  icon :: ReactNode
  | r
) 

type RadioProps = RadioPropsExt (

) 

primary :: forall r. Enum (primary :: String | r )
primary = unsafeCoerce "primary"

secondary :: forall r. Enum (secondary :: String | r )
secondary = unsafeCoerce "secondary"

default :: forall r. Enum (default :: String | r )
default = unsafeCoerce "default"

checkedIcon :: forall r a. IsReactNode a => a -> IProp (checkedIcon :: ReactNode | r)
checkedIcon = mkProp "checkedIcon" <<< (unsafeCoerce :: a -> ReactNode)

icon :: forall r a. IsReactNode a => a -> IProp (icon :: ReactNode | r)
icon = mkProp "icon" <<< (unsafeCoerce :: a -> ReactNode)

foreign import radioClass :: forall props. ReactClass props

radioU :: forall props. props -> Array ReactElement -> ReactElement
radioU = createElement radioClass

radio :: Array (IProp RadioProps) -> ReactElement
radio = mkPropRecord >>> radioU >>> (#) []

