module MaterialUI.PropTypes where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Uncurried (mkEffFn1)
import React (ReactElement)
import Unsafe.Coerce (unsafeCoerce)

type StandardPropsExt r = (
  className :: String,
  classes :: Untyped,
  style :: Styles
  | r
)

type StdColor r = (
  inherit :: String,
  primary :: String, 
  secondary :: String,
  default :: String
  | r
)

foreign import data ReactType :: Type
foreign import data ReactNode :: Type

class IsReactNode a
class IsReactType a

instance reactTypeString :: IsReactType String
instance reactElemNode :: IsReactNode ReactElement
instance reactStringNode :: IsReactNode String
instance reactIntNode :: IsReactNode Int

foreign import data EventHandler :: Type -> Type

handle :: forall a b eff. (a -> Eff eff b) -> EventHandler a
handle = unsafeCoerce <<< mkEffFn1

foreign import data Alignment :: Type
foreign import data Untyped :: Type
foreign import data Styles :: Type
