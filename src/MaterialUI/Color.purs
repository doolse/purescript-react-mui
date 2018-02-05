module MaterialUI.Color where

import MaterialUI.Properties (class IsProp)
import Unsafe.Coerce (unsafeCoerce)

class IsColor a

newtype Color = Color String

instance colIsColor :: IsColor Color
derive newtype instance isPropColor :: IsProp Color

inherit :: forall a. IsColor a => a
inherit = unsafeCoerce "inherit"

primary :: forall a. IsColor a => a
primary = unsafeCoerce "primary"

secondary :: forall a. IsColor a => a
secondary = unsafeCoerce "secondary"

default :: forall a. IsColor a => a
default = unsafeCoerce "default"
