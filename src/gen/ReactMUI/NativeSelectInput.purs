module ReactMUI.NativeSelectInput where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import Data.TSCompat.React (ReactNode)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (ReactElement)

type NativeSelectInputPropsO r = (
  disabled :: Boolean,
  "IconComponent" :: OneOf ((
    typed :: String,
    typed :: Any {--React.ComponentClass<any, any>--},
    typed :: Any {--(props: any, context: any => null | React.ReactElement<any>)--})),
  inputRef :: EffectFn1 (OneOf ((
    typed :: Any {--interface HTMLSelectElement--},
    typed :: Any {--{node: interface HTMLInputElement, value: undefined | string | number | false | true}--}))) Unit,
  name :: String,
  onChange :: EffectFn2 (Any {--React.ChangeEvent<interface HTMLSelectElement>--}) ReactNode Unit,
  value :: OneOf ((
    typed :: Boolean,
    typed :: String,
    typed :: Number)),
  variant :: OneOf ((
    typed :: StringConst ("filled"),
    typed :: StringConst ("outlined"),
    typed :: StringConst ("standard"))) | r )

type NativeSelectInputPropsM  = (
)

foreign import nativeSelectInput :: forall a. IsTSRecord a (NativeSelectInputPropsO NativeSelectInputPropsM) NativeSelectInputPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

nativeSelectInput_ :: Function (Array ReactElement) ReactElement
nativeSelectInput_ = nativeSelectInput {}