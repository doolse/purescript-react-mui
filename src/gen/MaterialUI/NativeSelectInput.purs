module MaterialUI.NativeSelectInput where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement, ReactNode)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)
import React.SyntheticEvent (SyntheticEvent)

foreign import classNativeSelectInput :: forall a. ReactClass a

type NativeSelectInputPropsO r = (
  variant :: OneOf (
    typed :: StringConst "standard", 
    typed :: StringConst "filled", 
    typed :: StringConst "outlined"
  ), 
  key :: OneOf (
    typed :: Number, 
    typed :: String
  ), 
  disabled :: Boolean, 
  "IconComponent" :: OneOf (
    typed :: Any {-- (props: any, context: any => null | React.ReactElement<any>)--}, 
    typed :: String, 
    typed :: Any {-- React.ComponentClass<any, any>--}
  ), 
  inputRef :: EffectFn1 (OneOf (
    typed :: Record (
      value :: OneOf (
        typed :: Number, 
        typed :: Boolean, 
        typed :: Any {-- undefined--}, 
        typed :: String
      ), 
      node :: Any {-- interface HTMLInputElement--}
    ), 
    typed :: Any {-- interface HTMLSelectElement--}
  )) Unit, 
  name :: String, 
  onChange :: EffectFn2 SyntheticEvent ReactNode Unit, 
  value :: OneOf (
    typed :: Number, 
    typed :: Boolean, 
    typed :: String
  )
 | r)

type NativeSelectInputPropsM  = (
)

nativeSelectInput :: forall a. IsTSEq (Record a) (OptionRecord (NativeSelectInputPropsO NativeSelectInputPropsM) NativeSelectInputPropsM) => Record a -> Array ReactElement -> ReactElement
nativeSelectInput = unsafeCreateElement classNativeSelectInput

nativeSelectInput_ :: Array ReactElement -> ReactElement
nativeSelectInput_ = unsafeCreateElement classNativeSelectInput {}

nativeSelectInput' :: forall a. IsTSEq (Record a) (OptionRecord (NativeSelectInputPropsO NativeSelectInputPropsM) NativeSelectInputPropsM) => Record a -> ReactElement
nativeSelectInput' = unsafeCreateLeafElement classNativeSelectInput