module MaterialUI.Paper where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import paperClass :: forall props. ReactClass props


type PaperProps r= Record  (

  | r
) 

type PaperPropsExt r= StandardPropsExt  (
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  elevation :: Int,
  square :: Boolean
  | r
) 

type PaperPropsO = PaperPropsExt  (

) 


elevation :: forall r. Int -> IProp (elevation :: Int | r)
elevation = mkProp "elevation"

square :: forall r. Boolean -> IProp (square :: Boolean | r)
square = mkProp "square"

paperU :: forall props. props -> Array ReactElement -> ReactElement
paperU = createElement paperClass

paper' :: Array (IProp PaperPropsO) -> Array ReactElement -> ReactElement
paper' = mkPropRecord >>> paperU

paper_ :: Array ReactElement -> ReactElement
paper_ = paperU {}

