module MaterialUI.CardContent where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import cardContentClass :: forall props. ReactClass props

type CardContentProps r = {


  | r
}

type CardContentPropsO = (


)

cardContentU :: forall props. props -> Array ReactElement -> ReactElement
cardContentU = createElement cardContentClass

cardContent' :: forall o. Optional o CardContentPropsO => CardContentProps o -> Array ReactElement -> ReactElement
cardContent' = cardContentU

