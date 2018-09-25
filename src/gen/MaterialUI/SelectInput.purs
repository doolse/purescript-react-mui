module MaterialUI.SelectInput where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement, ReactNode)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)
import React.SyntheticEvent (SyntheticEvent, SyntheticFocusEvent)

foreign import classSelectInput :: forall a. ReactClass a

type SelectInputPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  autoFocus :: Boolean, 
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
        typed :: Number, 
        typed :: Array (OneOf (
          typed :: String, 
          typed :: Number, 
          typed :: Any {-- false--}, 
          typed :: Any {-- true--}
        ))
      )
    )
  )) Unit, 
  "MenuProps" :: Any {-- unknown--}, 
  name :: String, 
  onBlur :: EffectFn1 SyntheticFocusEvent Unit, 
  onChange :: EffectFn2 SyntheticEvent ReactNode Unit, 
  onClose :: EffectFn1 SyntheticEvent Unit, 
  onFocus :: EffectFn1 SyntheticFocusEvent Unit, 
  onOpen :: EffectFn1 SyntheticEvent Unit, 
  open :: Boolean, 
  readOnly :: Boolean, 
  renderValue :: OneOf (
    typed :: Boolean, 
    typed :: Any {-- undefined--}, 
    typed :: String, 
    typed :: Number, 
    typed :: Array (OneOf (
      typed :: String, 
      typed :: Number, 
      typed :: Any {-- false--}, 
      typed :: Any {-- true--}
    ))
  ) -> ReactNode, 
  "SelectDisplayProps" :: Any {-- React.HTMLAttributes<interface HTMLDivElement>--}, 
  tabIndex :: Number, 
  value :: OneOf (
    typed :: Boolean, 
    typed :: String, 
    typed :: Number, 
    typed :: Array (OneOf (
      typed :: String, 
      typed :: Number, 
      typed :: Any {-- false--}, 
      typed :: Any {-- true--}
    ))
  ), 
  variant :: OneOf (
    typed :: StringConst "filled", 
    typed :: StringConst "outlined", 
    typed :: StringConst "standard"
  )
 | r)

type SelectInputPropsM  = (
  autoWidth :: Boolean, 
  multiple :: Boolean, 
  native :: Boolean
)

selectInput :: forall a. IsTSEq (Record a) (OptionRecord (SelectInputPropsO SelectInputPropsM) SelectInputPropsM) => Record a -> Array ReactElement -> ReactElement
selectInput = unsafeCreateElement classSelectInput

selectInput_ :: Array ReactElement -> ReactElement
selectInput_ = unsafeCreateElement classSelectInput {}

selectInput' :: forall a. IsTSEq (Record a) (OptionRecord (SelectInputPropsO SelectInputPropsM) SelectInputPropsM) => Record a -> ReactElement
selectInput' = unsafeCreateLeafElement classSelectInput