module MaterialUI.SelectInput where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (ReactNode)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateElement, unsafeCreateLeafElement, ReactClass, ReactElement)
import React.SyntheticEvent (SyntheticFocusEvent)

foreign import classSelectInput :: forall a. ReactClass a

type SelectInputPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  autoFocus :: Boolean,
  disabled :: Boolean,
  "IconComponent" :: OneOf ((
    typed :: String,
    typed :: Any {--React.ComponentClass<any, any>--},
    typed :: Any {--(props: any, context: any => null | React.ReactElement<any>)--})),
  inputRef :: EffectFn1 (OneOf ((
    typed :: Any {--interface HTMLSelectElement--},
    typed :: Record ((
      node :: Any {--interface HTMLInputElement--},
      value :: OneOf ((
        typed :: Any {--undefined--},
        typed :: String,
        typed :: Number,
        typed :: Any {--false--},
        typed :: Any {--true--},
        typed :: Array (OneOf ((
          typed :: String,
          typed :: Number,
          typed :: Any {--false--},
          typed :: Any {--true--})))))))))) Unit,
  "MenuProps" :: Any {--unknown--},
  name :: String,
  onBlur :: EffectFn1 SyntheticFocusEvent Unit,
  onChange :: EffectFn2 (Any {--React.ChangeEvent<interface HTMLSelectElement>--}) ReactNode Unit,
  onClose :: EffectFn1 (Any {--React.ChangeEvent<{}>--}) Unit,
  onFocus :: EffectFn1 SyntheticFocusEvent Unit,
  onOpen :: EffectFn1 (Any {--React.ChangeEvent<{}>--}) Unit,
  open :: Boolean,
  readOnly :: Boolean,
  renderValue :: Function (OneOf ((
    typed :: Any {--undefined--},
    typed :: String,
    typed :: Number,
    typed :: Any {--false--},
    typed :: Any {--true--},
    typed :: Array (OneOf ((
      typed :: String,
      typed :: Number,
      typed :: Any {--false--},
      typed :: Any {--true--})))))) ReactNode,
  "SelectDisplayProps" :: Any {--React.HTMLAttributes<interface HTMLDivElement>--},
  tabIndex :: Number,
  value :: OneOf ((
    typed :: Boolean,
    typed :: String,
    typed :: Number,
    typed :: Array (OneOf ((
      typed :: String,
      typed :: Number,
      typed :: Any {--false--},
      typed :: Any {--true--}))))),
  variant :: OneOf ((
    typed :: StringConst ("filled"),
    typed :: StringConst ("outlined"),
    typed :: StringConst ("standard"))) | r )

type SelectInputPropsM  = (
  autoWidth :: Boolean,
  multiple :: Boolean,
  native :: Boolean)

selectInput :: forall a. IsTSEq (Record a) (OptionRecord (SelectInputPropsO SelectInputPropsM) SelectInputPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
selectInput = unsafeCreateElement classSelectInput

selectInput_ :: Function (Array ReactElement) ReactElement
selectInput_ = unsafeCreateElement classSelectInput {}

selectInput' :: forall a. IsTSEq (Record a) (OptionRecord (SelectInputPropsO SelectInputPropsM) SelectInputPropsM) => Function (Record a) ReactElement
selectInput' = unsafeCreateLeafElement classSelectInput