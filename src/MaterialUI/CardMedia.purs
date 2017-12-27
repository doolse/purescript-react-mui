module MaterialUI.CardMedia where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import cardMediaClass :: forall props. ReactClass props

type CardMediaProps r = {


  | r
}

type CardMediaPropsO = (
  image :: String,
  src :: String
--  component :: UNION["String",FQN:React.ComponentType]
)

cardMediaU :: forall props. props -> Array ReactElement -> ReactElement
cardMediaU = createElement cardMediaClass

cardMedia' :: forall o. Optional o CardMediaPropsO => CardMediaProps o -> Array ReactElement -> ReactElement
cardMedia' = cardMediaU

