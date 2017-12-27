module MaterialUI.Typography where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)
import MaterialUI.PropTypes (Alignment, Color, TextStyle)

foreign import typographyClass :: forall props. ReactClass props

type TypographyProps r = {


  | r
}

type TypographyPropsO = (
  align :: Alignment,
  color :: Color,
  gutterBottom :: Boolean,
  noWrap :: Boolean,
  paragraph :: Boolean,
  type :: TextStyle
--  component :: UNION["String",FQN:React.ComponentType],
--  headlineMapping :: unknownType:MappedType
)

typographyU :: forall props. props -> Array ReactElement -> ReactElement
typographyU = createElement typographyClass

typography' :: forall o. Optional o TypographyPropsO => TypographyProps o -> Array ReactElement -> ReactElement
typography' = typographyU

