module MaterialUI.Color where

import MaterialUI.Properties (Enum)
import Unsafe.Coerce (unsafeCoerce)

inherit :: forall r. Enum (inherit :: String | r)
inherit = unsafeCoerce "inherit"

primary :: forall r. Enum (primary :: String | r)
primary = unsafeCoerce "primary"

secondary :: forall r. Enum (secondary :: String | r)
secondary = unsafeCoerce "secondary"

default :: forall r. Enum (default :: String | r)
default = unsafeCoerce "default"
