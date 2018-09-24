module MaterialUI.SelectInput where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement, ReactNode)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)
import React.SyntheticEvent (SyntheticEvent, SyntheticFocusEvent)

foreign import classSelectInput :: forall a.ReactClass a

type SelectInputPropsO r = (variant :: OneOf ((typed :: StringConst "standard",
  typed :: StringConst "filled",
  typed :: StringConst "outlined")),
  key :: OneOf ((typed :: Number,
  typed :: String)),
  autoFocus :: Boolean,
  disabled :: Boolean,
  "IconComponent" :: OneOf ((typed :: Any{-- (props: any, context: any => null | React.ReactElement<any>)--},
  typed :: String,
  typed :: Any{-- React.ComponentClass<any, any>--})),
  inputRef :: EffectFn1 (OneOf ((typed :: Record ((value :: OneOf ((typed :: Array (OneOf ((typed :: Any{-- true--},
  typed :: String,
  typed :: Number,
  typed :: Any{-- false--}))),
  typed :: Boolean,
  typed :: Any{-- undefined--},
  typed :: String,
  typed :: Number)),
  node :: Any{-- interface HTMLInputElement--})),
  typed :: Any{-- interface HTMLSelectElement--}))) Unit,
  "MenuProps" :: Any{-- unknown--},
  name :: String,
  onBlur :: EffectFn1 SyntheticFocusEvent Unit,
  onChange :: EffectFn2 SyntheticEvent ReactNode Unit,
  onClose :: EffectFn1 SyntheticEvent Unit,
  onFocus :: EffectFn1 SyntheticFocusEvent Unit,
  onOpen :: EffectFn1 SyntheticEvent Unit,
  open :: Boolean,
  readOnly :: Boolean,
  renderValue :: OneOf ((typed :: Array (OneOf ((typed :: Any{-- true--},
  typed :: String,
  typed :: Number,
  typed :: Any{-- false--}))),
  typed :: Boolean,
  typed :: Any{-- undefined--},
  typed :: String,
  typed :: Number)) -> ReactNode,
  "SelectDisplayProps" :: Any{-- React.HTMLAttributes<interface HTMLDivElement>--},
  tabIndex :: Number,
  value :: OneOf ((typed :: Array (OneOf ((typed :: Any{-- true--},
  typed :: String,
  typed :: Number,
  typed :: Any{-- false--}))),
  typed :: Boolean,
  typed :: String,
  typed :: Number)) | r)

type SelectInputPropsM  = (native :: Boolean,
  autoWidth :: Boolean,
  multiple :: Boolean)

selectInput :: forall a.IsTSEq (Record a) (OptionRecord (SelectInputPropsO SelectInputPropsM) SelectInputPropsM)  => Record a -> Array ReactElement -> ReactElement
selectInput = unsafeCreateElement classSelectInput

selectInput_ :: Array ReactElement -> ReactElement
selectInput_ = unsafeCreateElement classSelectInput {}

selectInput' :: forall a.IsTSEq (Record a) (OptionRecord (SelectInputPropsO SelectInputPropsM) SelectInputPropsM)  => Record a -> ReactElement
selectInput' = unsafeCreateLeafElement classSelectInput