module MaterialUI.PropTypes where

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Uncurried (mkEffFn1)
import Prelude
import Unsafe.Coerce (unsafeCoerce)

type StandardPropsExt r = (
  className :: String,
  style :: Styles
  | r
)

foreign import data EventHandler :: Type -> Type

handle :: forall a b eff. (a -> Eff eff b) -> EventHandler a
handle = unsafeCoerce <<< mkEffFn1

foreign import data Alignment :: Type
foreign import data Untyped :: Type
foreign import data Styles :: Type

ut :: forall a. a -> Untyped
ut = unsafeCoerce
