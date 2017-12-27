module MaterialUI.Badge where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)
import MaterialUI.PropTypes (Color)

foreign import badgeClass :: forall props. ReactClass props

type BadgeProps r = {

--  badgeContent :: React.ReactNode,
--  children :: React.ReactNode
  | r
}

type BadgePropsO = (
  color :: Color

)

badgeU :: forall props. props -> Array ReactElement -> ReactElement
badgeU = createElement badgeClass

badge' :: forall o. Optional o BadgePropsO => BadgeProps o -> Array ReactElement -> ReactElement
badge' = badgeU

