module MaterialUI.PropTypes where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Uncurried (EffFn1, EffFn2, mkEffFn1)
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

class AsEventHandler a e | a -> e where 
  toHandler :: a -> EventHandler e

instance effFn1AsH :: AsEventHandler (EffFn1 ef a b) a where
  toHandler = unsafeCoerce

instance effFn2AsH :: AsEventHandler (EffFn2 ef a b c) e where
  toHandler = unsafeCoerce

instance effAsH :: AsEventHandler (e -> Eff ef a) e where
  toHandler = unsafeCoerce <<< mkEffFn1

foreign import data EventHandler :: Type -> Type
foreign import data Alignment :: Type
foreign import data Untyped :: Type
foreign import data Styles :: Type

type TextStyle r = (
  display1 :: String,
  display2 :: String, 
  display3 :: String,
  display4 :: String,
  headline :: String,
  title :: String,
  subheading :: String,
  body1 :: String,
  body2 :: String,
  caption :: String,
  button :: String
  | r
)