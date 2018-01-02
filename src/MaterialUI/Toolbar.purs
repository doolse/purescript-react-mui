module MaterialUI.Toolbar where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import toolbarClass :: forall props. ReactClass props


type ToolbarProps r= Record  (

  | r
) 

type ToolbarPropsExt r= StandardPropsExt  (
  disableGutters :: Boolean
  | r
) 

type ToolbarPropsO = ToolbarPropsExt  (

) 


disableGutters :: forall r. Boolean -> IProp (disableGutters :: Boolean | r)
disableGutters = mkProp "disableGutters"

toolbarU :: forall props. props -> Array ReactElement -> ReactElement
toolbarU = createElement toolbarClass

toolbar' :: Array (IProp ToolbarPropsO) -> Array ReactElement -> ReactElement
toolbar' = mkPropRecord >>> toolbarU

toolbar_ :: Array ReactElement -> ReactElement
toolbar_ = toolbarU {}

