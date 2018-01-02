module MaterialUI.Color where

import Unsafe.Coerce (unsafeCoerce)

class IsColor a

newtype Color = Color String

inherit :: forall a. IsColor a => a
inherit = unsafeCoerce "inherit"

primary :: forall a. IsColor a => a
primary = unsafeCoerce "primary"

accent :: forall a. IsColor a => a
accent = unsafeCoerce "accent"

default :: forall a. IsColor a => a
default = unsafeCoerce "default"
