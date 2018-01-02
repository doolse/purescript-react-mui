module MaterialUI.Typography where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.Color (class IsColor)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord, class IsProp)
import MaterialUI.TextStyle (TextStyle)

foreign import typographyClass :: forall props. ReactClass props

newtype TypographyColor = TypographyColor String
derive newtype instance isPropTypographyColor :: IsProp TypographyColor
instance typographyColorIsColor :: IsColor TypographyColor
type TypographyProps r= Record  (

  | r
) 

type TypographyPropsExt r= StandardPropsExt  (
  align :: Untyped {-PropTypes.Alignment-},
  color :: TypographyColor,
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  gutterBottom :: Boolean,
  headlineMapping :: Untyped {-unknownType:MappedType-},
  noWrap :: Boolean,
  paragraph :: Boolean,
  type :: TextStyle
  | r
) 

type TypographyPropsO = TypographyPropsExt  (

) 

secondary :: TypographyColor
secondary = TypographyColor "secondary"

error :: TypographyColor
error = TypographyColor "error"

align :: forall r. Untyped -> IProp (align :: Untyped | r)
align = mkProp "align"

gutterBottom :: forall r. Boolean -> IProp (gutterBottom :: Boolean | r)
gutterBottom = mkProp "gutterBottom"

headlineMapping :: forall r. Untyped -> IProp (headlineMapping :: Untyped | r)
headlineMapping = mkProp "headlineMapping"

noWrap :: forall r. Boolean -> IProp (noWrap :: Boolean | r)
noWrap = mkProp "noWrap"

paragraph :: forall r. Boolean -> IProp (paragraph :: Boolean | r)
paragraph = mkProp "paragraph"

typographyU :: forall props. props -> Array ReactElement -> ReactElement
typographyU = createElement typographyClass

typography' :: Array (IProp TypographyPropsO) -> Array ReactElement -> ReactElement
typography' = mkPropRecord >>> typographyU

typography_ :: Array ReactElement -> ReactElement
typography_ = typographyU {}

