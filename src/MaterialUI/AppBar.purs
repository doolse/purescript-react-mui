module MaterialUI.AppBar where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.Color (Color)
import MaterialUI.PropTypes (StandardPropsExt)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord, class IsProp)

foreign import appBarClass :: forall props. ReactClass props

newtype Position = Position String
derive newtype instance isPropPosition :: IsProp Position

type AppBarProps r= Record  (

  | r
) 

type AppBarPropsExt r= StandardPropsExt  (
  color :: Color,
  position :: Position
  | r
) 

type AppBarPropsO = AppBarPropsExt  (

) 

static :: Position
static = Position "static"

fixed :: Position
fixed = Position "fixed"

absolute :: Position
absolute = Position "absolute"

position :: forall r. Position -> IProp (position :: Position | r)
position = mkProp "position"

appBarU :: forall props. props -> Array ReactElement -> ReactElement
appBarU = createElement appBarClass

appBar' :: Array (IProp AppBarPropsO) -> Array ReactElement -> ReactElement
appBar' = mkPropRecord >>> appBarU

appBar_ :: Array ReactElement -> ReactElement
appBar_ = appBarU {}

