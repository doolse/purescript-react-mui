module ReactMUI.CssBaseline where
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type CssBaselinePropsO r = (
  children :: ReactElement | r )

type CssBaselinePropsM  = (
)

foreign import cssBaseline :: forall a. IsTSRecord a (CssBaselinePropsO CssBaselinePropsM) CssBaselinePropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

cssBaseline_ :: Function (Array ReactElement) ReactElement
cssBaseline_ = cssBaseline {}