module MaterialUI.TextStyle where

import MaterialUI.Properties (class IsProp)

newtype TextStyle = TextStyle String
derive newtype instance isPropPosition :: IsProp TextStyle

display1 :: TextStyle
display1 = TextStyle "display1"

display2 :: TextStyle
display2 = TextStyle "display2"

display3 :: TextStyle
display3 = TextStyle "display3"

display4 :: TextStyle
display4 = TextStyle "display4"

title :: TextStyle
title = TextStyle "title"

headline :: TextStyle
headline = TextStyle "headline"

subheading :: TextStyle
subheading = TextStyle "subheading"

body1 :: TextStyle
body1 = TextStyle "body1"

body2 :: TextStyle
body2 = TextStyle "body2"

caption :: TextStyle
caption = TextStyle "caption"

button :: TextStyle
button = TextStyle "button"
