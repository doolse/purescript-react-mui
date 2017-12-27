module MaterialUI.Card where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import cardClass :: forall props. ReactClass props

type CardProps r = {


  | r
}

type CardPropsO = (
  raised :: Boolean

)

cardU :: forall props. props -> Array ReactElement -> ReactElement
cardU = createElement cardClass

card' :: forall o. Optional o CardPropsO => CardProps o -> Array ReactElement -> ReactElement
card' = cardU

