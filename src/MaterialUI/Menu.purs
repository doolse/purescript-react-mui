module MaterialUI.Menu where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import menuClass :: forall props. ReactClass props

type MenuProps r = {


  | r
}

type MenuPropsO = (
  open :: Boolean
--  anchorEl :: Identifier:HTMLElement,
--  MenuListProps :: Identifier:MenuListProps,
--  onClose :: React.EventHandler,
--  transitionDuration :: Identifier:TransitionDuration
)

menuU :: forall props. props -> Array ReactElement -> ReactElement
menuU = createElement menuClass

menu' :: forall o. Optional o MenuPropsO => MenuProps o -> Array ReactElement -> ReactElement
menu' = menuU

