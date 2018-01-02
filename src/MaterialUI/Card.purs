module MaterialUI.Card where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import cardClass :: forall props. ReactClass props


type CardProps r= Record  (

  | r
) 

type CardPropsExt r= StandardPropsExt  (
  raised :: Boolean
  | r
) 

type CardPropsO = CardPropsExt  (

) 


raised :: forall r. Boolean -> IProp (raised :: Boolean | r)
raised = mkProp "raised"

cardU :: forall props. props -> Array ReactElement -> ReactElement
cardU = createElement cardClass

card' :: Array (IProp CardPropsO) -> Array ReactElement -> ReactElement
card' = mkPropRecord >>> cardU

card_ :: Array ReactElement -> ReactElement
card_ = cardU {}

