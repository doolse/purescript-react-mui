module MaterialUI.Badge where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.Color (Color)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import badgeClass :: forall props. ReactClass props


type BadgeProps r= Record  (
  badgeContent :: Untyped {-React.ReactNode-},
  children :: Untyped {-React.ReactNode-}
  | r
) 

type BadgePropsExt r= StandardPropsExt  (
  color :: Color
  | r
) 

type BadgePropsO = BadgePropsExt  (

) 


badgeContent :: forall r. Untyped -> IProp (badgeContent :: Untyped | r)
badgeContent = mkProp "badgeContent"

children :: forall r. Untyped -> IProp (children :: Untyped | r)
children = mkProp "children"

badgeU :: forall props. props -> Array ReactElement -> ReactElement
badgeU = createElement badgeClass

badge' :: Array (IProp BadgePropsO) -> Array ReactElement -> ReactElement
badge' = mkPropRecord >>> badgeU

badge_ :: Array ReactElement -> ReactElement
badge_ = badgeU {}

