module MaterialUI.TextStyle where

import MaterialUI.Properties (Enum)
import Unsafe.Coerce (unsafeCoerce)

display1 :: forall r. Enum (display1 :: String | r)
display1 = unsafeCoerce "display1"

display2 :: forall r. Enum (display2 :: String | r)
display2 = unsafeCoerce "display2"

display3 :: forall r. Enum (display3 :: String | r)
display3 = unsafeCoerce "display3"

display4 :: forall r. Enum (display4 :: String | r)
display4 = unsafeCoerce "display4"

title :: forall r. Enum (title :: String | r)
title = unsafeCoerce "title"

headline :: forall r. Enum (headline :: String | r)
headline = unsafeCoerce "headline"

subheading :: forall r. Enum (subheading :: String | r)
subheading = unsafeCoerce "subheading"

body1 :: forall r. Enum (body1 :: String | r)
body1 = unsafeCoerce "body1"

body2 :: forall r. Enum (body2 :: String | r)
body2 = unsafeCoerce "body2"

caption :: forall r. Enum (caption :: String | r)
caption = unsafeCoerce "caption"

button :: forall r. Enum (button :: String | r)
button = unsafeCoerce "button"
