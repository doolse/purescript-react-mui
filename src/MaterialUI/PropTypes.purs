module MaterialUI.PropTypes where

import Unsafe.Coerce (unsafeCoerce)

foreign import data Alignment :: Type

newtype Color = Color String
newtype TextStyle = TextStyle String

type TextStyleEnum t = {
  display1 :: t,
  display2 :: t,
  display3 :: t,
  display4 :: t,
  title :: t,
  headline :: t,
  subheading :: t,
  body1 :: t,
  body2 :: t,
  caption :: t,
  button :: t
}

type ColorsEnum t = {
  inherit :: t,
  primary :: t,
  accent :: t,
  default :: t
}

textStyles :: TextStyleEnum TextStyle
textStyles = unsafeCoerce ({display1: "display1", display2: "display2",
  display3 : "display3", display4 : "display4", headline: "headline",
  subheading: "subheading", body1: "body1", body2: "body2", caption: "caption",
  button: "button",title:"title"} :: TextStyleEnum String)

colors :: ColorsEnum Color
colors = unsafeCoerce ({inherit:"inherit", primary:"primary", accent:"accent", default:"default"} :: ColorsEnum String)
