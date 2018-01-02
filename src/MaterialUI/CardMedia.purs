module MaterialUI.CardMedia where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import cardMediaClass :: forall props. ReactClass props


type CardMediaProps r= Record  (

  | r
) 

type CardMediaPropsExt r= StandardPropsExt  (
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  image :: String,
  src :: String
  | r
) 

type CardMediaPropsO = CardMediaPropsExt  (

) 


image :: forall r. String -> IProp (image :: String | r)
image = mkProp "image"

src :: forall r. String -> IProp (src :: String | r)
src = mkProp "src"

cardMediaU :: forall props. props -> Array ReactElement -> ReactElement
cardMediaU = createElement cardMediaClass

cardMedia' :: Array (IProp CardMediaPropsO) -> Array ReactElement -> ReactElement
cardMedia' = mkPropRecord >>> cardMediaU

cardMedia_ :: Array ReactElement -> ReactElement
cardMedia_ = cardMediaU {}

