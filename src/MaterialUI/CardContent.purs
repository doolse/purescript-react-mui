module MaterialUI.CardContent where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import cardContentClass :: forall props. ReactClass props


type CardContentProps r= Record  (

  | r
) 

type CardContentPropsExt r= StandardPropsExt  (

  | r
) 

type CardContentPropsO = CardContentPropsExt  (

) 



cardContentU :: forall props. props -> Array ReactElement -> ReactElement
cardContentU = createElement cardContentClass

cardContent' :: Array (IProp CardContentPropsO) -> Array ReactElement -> ReactElement
cardContent' = mkPropRecord >>> cardContentU

cardContent_ :: Array ReactElement -> ReactElement
cardContent_ = cardContentU {}

