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
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  disabled :: Boolean, 
  "IconComponent" :: OneOf (
    typed :: String, 
    typed :: Any {-- React.ComponentClass<any, any>--}, 
    typed :: Any {-- (props: any, context: any => null | React.ReactElement<any>)--}
  ), 
  inputRef :: EffectFn1 (OneOf (
    typed :: Any {-- interface HTMLSelectElement--}, 
    typed :: Record (
      node :: Any {-- interface HTMLInputElement--}, 
      value :: OneOf (
        typed :: Boolean, 
        typed :: Any {-- undefined--}, 
        typed :: String, 
        typed :: Number
      )
    )
  )) Unit, 
  name :: String, 
  onChange :: EffectFn2 SyntheticEvent ReactNode Unit, 
  value :: OneOf (
    typed :: Boolean, 
    typed :: String, 
    typed :: Number
  ), 
  variant :: OneOf (
    typed :: StringConst "filled", 
    typed :: StringConst "outlined", 
    typed :: StringConst "standard"
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