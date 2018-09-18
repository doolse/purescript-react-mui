module ReactMUI.SelectInput where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import Data.TSCompat.React (ReactNode)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (ReactElement)

type SelectInputPropsO r = (
  autoFocus :: Boolean,
  disabled :: Boolean,
  "IconComponent" :: OneOf ((
    typed :: String,
    typed :: Any {--React.ComponentClass<any, any>--},
    typed :: Any {--(props: any, context: any => null | React.ReactElement<any>)--})),
  inputRef :: EffectFn1 (OneOf ((
    typed :: Any {--interface HTMLSelectElement--},
    typed :: Any {--{node: interface HTMLInputElement, value: undefined | string | number | false | true | Array<string | number | false | true>}--}))) Unit,
  "MenuProps" :: Any {--unknown--},
  name :: String,
  onBlur :: EffectFn1 (Any {--React.FocusEvent<any>--}) Unit,
  onChange :: EffectFn2 (Any {--React.ChangeEvent<interface HTMLSelectElement>--}) ReactNode Unit,
  onClose :: EffectFn1 (Any {--React.ChangeEvent<{}>--}) Unit,
  onFocus :: EffectFn1 (Any {--React.FocusEvent<any>--}) Unit,
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
      typed :: Any {--true--}))))) | r )
type SelectInputPropsM  = (
  autoWidth :: Boolean,
  multiple :: Boolean,
  native :: Boolean)
foreign import selectInput :: forall a. IsTSRecord a (SelectInputPropsO SelectInputPropsM) SelectInputPropsM => Function (Record a) ReactElement