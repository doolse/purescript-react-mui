module MaterialUI.Properties where

import Prelude

import MaterialUI.PropTypes (class IsReactType, EventHandler, ReactNode, ReactType, Styles, Untyped)
import Unsafe.Coerce (unsafeCoerce)

foreign import data IProp :: # Type -> Type
foreign import data PropValue :: Type

class IsProp a where
  toProp :: a -> PropValue

instance ehIsProp :: IsProp (EventHandler a) where
  toProp = unsafeCoerce

instance utIsProp :: IsProp Untyped where
  toProp = unsafeCoerce

instance booleanIsProp :: IsProp Boolean where
  toProp = unsafeCoerce

instance numberIsProp :: IsProp Number where
  toProp = unsafeCoerce

instance stringIsProp :: IsProp String where
  toProp = unsafeCoerce

instance intIsProp :: IsProp Int where
  toProp = unsafeCoerce

instance stylesIsProp :: IsProp Styles where
  toProp = unsafeCoerce

instance reactTypeIsProp :: IsProp ReactType where
  toProp = unsafeCoerce

instance reactNodeIsProp :: IsProp ReactNode where
  toProp = unsafeCoerce

foreign import mkPropRecord :: forall r rp. Array (IProp r) -> Record rp
foreign import mkPropF :: forall r. String -> PropValue -> (IProp r)

mkProp :: forall a r. IsProp a => String -> a -> IProp r
mkProp k a = mkPropF k (toProp a)

type_ :: forall a r. IsProp a => a -> IProp ("type"::a|r)
type_ = mkProp "type"

color :: forall a r. IsProp a => a -> IProp (color::a|r)
color = mkProp "color"

style :: forall r s. Record s -> IProp (style::Styles|r)
style s = mkProp "style" $ unsafeCoerce s :: Styles

className :: forall r. String -> IProp (className::String|r)
className = mkProp "className"

classes :: forall r s. Record s -> IProp (classes::Untyped|r)
classes s = mkProp "classes"  $ unsafeCoerce s :: Untyped

component :: forall a r. IsReactType a => a -> IProp (component::ReactType|r)
component c = mkProp "component" (unsafeCoerce c :: ReactType)

variant :: forall a r. IsProp a => a -> IProp (variant::a|r)
variant = mkProp "variant"
