module MaterialUI.Chip where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import chipClass :: forall props. ReactClass props

type ChipProps r = {


  | r
}

type ChipPropsO = (

--  avatar :: React.ReactElement,
--  deleteIcon :: React.ReactElement,
--  label :: React.ReactNode,
--  onDelete :: React.EventHandler,
--  onKeyDown :: React.EventHandler
)

chipU :: forall props. props -> Array ReactElement -> ReactElement
chipU = createElement chipClass

chip' :: forall o. Optional o ChipPropsO => ChipProps o -> Array ReactElement -> ReactElement
chip' = chipU

