module MaterialUI.ListSubheader where

-- This file is autogenerated from the typescript binding

import Prelude
import MaterialUI.PropTypes (ReactType, StandardPropsExt)
import MaterialUI.Properties (IProp, mkProp, Enum, mkPropRecord)
import React (createElement, ReactClass, ReactElement)
import Unsafe.Coerce (unsafeCoerce)

type ListSubheaderPropsExt r = StandardPropsExt (
  component :: ReactType,
  color :: Enum (default :: String, primary :: String, inherit :: String),
  inset :: Boolean,
  disableSticky :: Boolean
  | r
) 

type ListSubheaderProps = ListSubheaderPropsExt (

) 

default :: forall r. Enum (default :: String | r )
default = unsafeCoerce "default"

primary :: forall r. Enum (primary :: String | r )
primary = unsafeCoerce "primary"

inherit :: forall r. Enum (inherit :: String | r )
inherit = unsafeCoerce "inherit"

inset :: forall r. Boolean -> IProp (inset :: Boolean | r)
inset = mkProp "inset"

disableSticky :: forall r. Boolean -> IProp (disableSticky :: Boolean | r)
disableSticky = mkProp "disableSticky"

foreign import listSubheaderClass :: forall props. ReactClass props

listSubheaderU :: forall props. props -> Array ReactElement -> ReactElement
listSubheaderU = createElement listSubheaderClass

listSubheader :: Array (IProp ListSubheaderProps) -> Array ReactElement -> ReactElement
listSubheader = mkPropRecord >>> listSubheaderU

listSubheader_ :: Array ReactElement -> ReactElement
listSubheader_ = listSubheaderU {}