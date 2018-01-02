module MaterialUI.CardActions where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import cardActionsClass :: forall props. ReactClass props


type CardActionsProps r= Record  (

  | r
) 

type CardActionsPropsExt r= StandardPropsExt  (
  disableActionSpacing :: Boolean
  | r
) 

type CardActionsPropsO = CardActionsPropsExt  (

) 


disableActionSpacing :: forall r. Boolean -> IProp (disableActionSpacing :: Boolean | r)
disableActionSpacing = mkProp "disableActionSpacing"

cardActionsU :: forall props. props -> Array ReactElement -> ReactElement
cardActionsU = createElement cardActionsClass

cardActions' :: Array (IProp CardActionsPropsO) -> Array ReactElement -> ReactElement
cardActions' = mkPropRecord >>> cardActionsU

cardActions_ :: Array ReactElement -> ReactElement
cardActions_ = cardActionsU {}

