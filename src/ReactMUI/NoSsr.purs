module ReactMUI.NoSsr where
import Data.TSCompat.Class (class IsTSRecord)
import Data.TSCompat.React (ReactNode)
import React (ReactElement)

type NoSsrPropsO r = (
  fallback :: ReactNode | r )
type NoSsrPropsM  = (
)
foreign import noSsr :: forall a. IsTSRecord a (NoSsrPropsO NoSsrPropsM) NoSsrPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)