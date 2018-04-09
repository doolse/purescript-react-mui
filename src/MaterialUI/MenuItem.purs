module MaterialUI.MenuItem where

-- This file is autogenerated from the typescript binding

import Prelude
import MaterialUI.PropTypes (StandardPropsExt, ReactType)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)
import React (ReactClass, ReactElement, createElement)

type MenuItemPropsExt r = StandardPropsExt (
  component :: ReactType,
  role :: String,
  selected :: Boolean
  | r
) 

type MenuItemProps = MenuItemPropsExt (

) 


role :: forall r. String -> IProp (role :: String | r)
role = mkProp "role"

selected :: forall r. Boolean -> IProp (selected :: Boolean | r)
selected = mkProp "selected"

foreign import menuItemClass :: forall props. ReactClass props

menuItemU :: forall props. props -> Array ReactElement -> ReactElement
menuItemU = createElement menuItemClass

menuItem :: Array (IProp MenuItemProps) -> Array ReactElement -> ReactElement
menuItem = mkPropRecord >>> menuItemU

menuItem_ :: Array ReactElement -> ReactElement
menuItem_ = menuItemU {}
