module MaterialUI.CardHeader where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import cardHeaderClass :: forall props. ReactClass props

type CardHeaderProps r = {


  | r
}

type CardHeaderPropsO = (

--  action :: React.ReactNode,
--  avatar :: React.ReactNode,
--  subheader :: React.ReactNode,
--  title :: React.ReactNode
)

cardHeaderU :: forall props. props -> Array ReactElement -> ReactElement
cardHeaderU = createElement cardHeaderClass

cardHeader' :: forall o. Optional o CardHeaderPropsO => CardHeaderProps o -> Array ReactElement -> ReactElement
cardHeader' = cardHeaderU

