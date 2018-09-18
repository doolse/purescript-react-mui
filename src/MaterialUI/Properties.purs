module MaterialUI.Properties where

import Prelude

import Data.JSDate (JSDate)
import Data.Nullable (Nullable)
import MaterialUI.PropTypes (class AsEventHandler, class IsReactType, EventHandler, ReactNode, ReactType, Styles, Untyped, toHandler)
import React (ReactElement)
import Unsafe.Coerce (unsafeCoerce)

foreign import data IProp :: # Type -> Type
foreign import data PropValue :: Type

foreign import data Enum :: # Type -> Type 

class IsProp a where
  toProp :: a -> PropValue

instance ehIsProp :: IsProp (EventHandler a) where
  toProp = unsafeCoerce

instance utIsProp :: IsProp Untyped where
  toProp = unsafeCoerce

instance jsd :: IsProp JSDate where 
  toProp = unsafeCoerce

instance nullIsProp :: IsProp a => IsProp (Nullable a) where
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

instance reactElementIsProp :: IsProp ReactElement where
  toProp = unsafeCoerce

instance enumIsProp :: IsProp (Enum a) where
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

classes_ :: forall r s. Record s -> IProp (classes::Untyped|r)
classes_ s = mkProp "classes"  $ unsafeCoerce s :: Untyped

component :: forall a r. IsReactType a => a -> IProp (component::ReactType|r)
component c = mkProp "component" (unsafeCoerce c :: ReactType)

variant :: forall a r. IsProp a => a -> IProp (variant::a|r)
variant = mkProp "variant"

onChange :: forall a e r. AsEventHandler a e => a -> IProp (onChange :: EventHandler e | r)
onChange = mkProp "onChange" <<< toHandler

onClick :: forall a e r. AsEventHandler a e => a -> IProp (onClick :: EventHandler e | r)
onClick = mkProp "onClick" <<< toHandler

onKeyDown :: forall a e r. AsEventHandler a e => a -> IProp (onKeyDown :: EventHandler e | r)
onKeyDown = mkProp "onKeyDown" <<< toHandler

onKeyUp :: forall a e r. AsEventHandler a e => a -> IProp (onKeyUp :: EventHandler e | r)
onKeyUp = mkProp "onKeyUp" <<< toHandler

onClose :: forall a e r. AsEventHandler a e => a -> IProp (onClose :: EventHandler e | r)
onClose = mkProp "onClose" <<< toHandler

onOpen :: forall a e r. AsEventHandler a e => a -> IProp (onOpen :: EventHandler e | r)
onOpen = mkProp "onOpen" <<< toHandler

onDelete :: forall a e r. AsEventHandler a e => a -> IProp (onDelete :: EventHandler e | r)
onDelete = mkProp "onDelete" <<< toHandler

open :: forall r. Boolean -> IProp (open :: Boolean | r)
open = mkProp "open"

disabled :: forall r. Boolean -> IProp (disabled :: Boolean | r)
disabled = mkProp "disabled"
