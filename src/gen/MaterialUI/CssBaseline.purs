module MaterialUI.CssBaseline where
import Data.TSCompat (OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import React (unsafeCreateElement, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classCssBaseline :: forall a. ReactClass a

type CssBaselinePropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)) | r )

type CssBaselinePropsM  = (
)

cssBaseline :: forall a. IsTSEq (Record a) (OptionRecord (CssBaselinePropsO CssBaselinePropsM) CssBaselinePropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
cssBaseline = unsafeCreateElement classCssBaseline

cssBaseline_ :: Function (Array ReactElement) ReactElement
cssBaseline_ = unsafeCreateElement classCssBaseline {}

cssBaseline' :: forall a. IsTSEq (Record a) (OptionRecord (CssBaselinePropsO CssBaselinePropsM) CssBaselinePropsM) => Function (Record a) ReactElement
cssBaseline' = unsafeCreateLeafElement classCssBaseline