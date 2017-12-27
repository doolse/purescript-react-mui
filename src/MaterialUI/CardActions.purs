module MaterialUI.CardActions where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import cardActionsClass :: forall props. ReactClass props

type CardActionsProps r = {


  | r
}

type CardActionsPropsO = (
  disableActionSpacing :: Boolean

)

cardActionsU :: forall props. props -> Array ReactElement -> ReactElement
cardActionsU = createElement cardActionsClass

cardActions' :: forall o. Optional o CardActionsPropsO => CardActionsProps o -> Array ReactElement -> ReactElement
cardActions' = cardActionsU

