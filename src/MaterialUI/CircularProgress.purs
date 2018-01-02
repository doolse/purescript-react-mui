module MaterialUI.CircularProgress where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord, class IsProp)

foreign import circularProgressClass :: forall props. ReactClass props

newtype CircularProgressColor = CircularProgressColor String
derive newtype instance isPropCircularProgressColor :: IsProp CircularProgressColor

newtype Mode = Mode String
derive newtype instance isPropMode :: IsProp Mode

type CircularProgressProps r= Record  (

  | r
) 

type CircularProgressPropsExt r= StandardPropsExt  (
  color :: CircularProgressColor,
  max :: Int,
  min :: Int,
  mode :: Mode,
  size :: Int,
  thickness :: Int,
  value :: Int
  | r
) 

type CircularProgressPropsO = CircularProgressPropsExt  (

) 

primary :: CircularProgressColor
primary = CircularProgressColor "primary"

accent :: CircularProgressColor
accent = CircularProgressColor "accent"

inherit :: CircularProgressColor
inherit = CircularProgressColor "inherit"

determinate :: Mode
determinate = Mode "determinate"

indeterminate :: Mode
indeterminate = Mode "indeterminate"

max :: forall r. Int -> IProp (max :: Int | r)
max = mkProp "max"

min :: forall r. Int -> IProp (min :: Int | r)
min = mkProp "min"

mode :: forall r. Mode -> IProp (mode :: Mode | r)
mode = mkProp "mode"

size :: forall r. Int -> IProp (size :: Int | r)
size = mkProp "size"

thickness :: forall r. Int -> IProp (thickness :: Int | r)
thickness = mkProp "thickness"

value :: forall r. Int -> IProp (value :: Int | r)
value = mkProp "value"

circularProgressU :: forall props. props -> Array ReactElement -> ReactElement
circularProgressU = createElement circularProgressClass

circularProgress' :: Array (IProp CircularProgressPropsO) -> Array ReactElement -> ReactElement
circularProgress' = mkPropRecord >>> circularProgressU

circularProgress_ :: Array ReactElement -> ReactElement
circularProgress_ = circularProgressU {}

