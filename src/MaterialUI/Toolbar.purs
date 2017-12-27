module MaterialUI.Toolbar where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import toolbarClass :: forall props. ReactClass props

type ToolbarProps r = {


  | r
}

type ToolbarPropsO = (
  disableGutters :: Boolean

)

toolbarU :: forall props. props -> Array ReactElement -> ReactElement
toolbarU = createElement toolbarClass

toolbar' :: forall o. Optional o ToolbarPropsO => ToolbarProps o -> Array ReactElement -> ReactElement
toolbar' = toolbarU

