module MaterialUI.AppBar where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)
import MaterialUI.PropTypes (Color)

foreign import appBarClass :: forall props. ReactClass props

type AppBarProps r = {


  | r
}

type AppBarPropsO = (
  color :: Color
--  position :: UNION['static','fixed','absolute']
)

appBarU :: forall props. props -> Array ReactElement -> ReactElement
appBarU = createElement appBarClass

appBar' :: forall o. Optional o AppBarPropsO => AppBarProps o -> Array ReactElement -> ReactElement
appBar' = appBarU

