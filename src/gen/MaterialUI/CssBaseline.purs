module MaterialUI.CssBaseline where
import Data.TSCompat (OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classCssBaseline :: forall a. ReactClass a

type CssBaselinePropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  )
 | r)

type CssBaselinePropsM  = (
)

cssBaseline :: forall a. IsTSEq (Record a) (OptionRecord (CssBaselinePropsO CssBaselinePropsM) CssBaselinePropsM) => Record a -> ReactElement -> ReactElement
cssBaseline = unsafeCreateElement classCssBaseline

cssBaseline_ :: ReactElement -> ReactElement
cssBaseline_ = unsafeCreateElement classCssBaseline {}

cssBaseline' :: forall a. IsTSEq (Record a) (OptionRecord (CssBaselinePropsO CssBaselinePropsM) CssBaselinePropsM) => Record a -> ReactElement
cssBaseline' = unsafeCreateLeafElement classCssBaseline