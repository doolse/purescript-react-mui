module MaterialUI.FormControlContext where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classFormControlContext :: forall a. ReactClass a

type FormControlContextPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  error :: Boolean, 
  disabled :: Boolean, 
  variant :: OneOf (
    typed :: StringConst "standard", 
    typed :: StringConst "outlined", 
    typed :: StringConst "filled"
  ), 
  required :: Boolean, 
  margin :: OneOf (
    typed :: StringConst "none", 
    typed :: StringConst "dense", 
    typed :: StringConst "normal"
  )
 | r)

type FormControlContextPropsM  = (
  adornedStart :: Boolean, 
  filled :: Boolean, 
  focused :: Boolean, 
  onBlur :: Any {-- ( => void)--}, 
  onEmpty :: Any {-- ( => void)--}, 
  onFilled :: Any {-- ( => void)--}, 
  onFocus :: Any {-- ( => void)--}
)

formControlContext :: forall a. IsTSEq (Record a) (OptionRecord (FormControlContextPropsO FormControlContextPropsM) FormControlContextPropsM) => Record a -> Array ReactElement -> ReactElement
formControlContext = unsafeCreateElement classFormControlContext

formControlContext_ :: Array ReactElement -> ReactElement
formControlContext_ = unsafeCreateElement classFormControlContext {}

formControlContext' :: forall a. IsTSEq (Record a) (OptionRecord (FormControlContextPropsO FormControlContextPropsM) FormControlContextPropsM) => Record a -> ReactElement
formControlContext' = unsafeCreateLeafElement classFormControlContext