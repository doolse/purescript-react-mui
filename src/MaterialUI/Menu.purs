module MaterialUI.Menu where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import menuClass :: forall props. ReactClass props


type MenuProps r= Record  (

  | r
) 

type MenuPropsExt r= StandardPropsExt  (
  anchorEl :: Untyped {-Identifier:HTMLElement-},
  "MenuListProps" :: Untyped {-Identifier:MenuListProps-},
  transitionDuration :: Untyped {-Identifier:TransitionDuration-}
  | r
) 

type MenuPropsO = MenuPropsExt  (

) 


anchorEl :: forall r. Untyped -> IProp (anchorEl :: Untyped | r)
anchorEl = mkProp "anchorEl"

menuListProps :: forall r. Untyped -> IProp ("MenuListProps" :: Untyped | r)
menuListProps = mkProp "MenuListProps"

transitionDuration :: forall r. Untyped -> IProp (transitionDuration :: Untyped | r)
transitionDuration = mkProp "transitionDuration"

menuU :: forall props. props -> Array ReactElement -> ReactElement
menuU = createElement menuClass

menu' :: Array (IProp MenuPropsO) -> Array ReactElement -> ReactElement
menu' = mkPropRecord >>> menuU

menu_ :: Array ReactElement -> ReactElement
menu_ = menuU {}

