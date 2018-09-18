module ReactMUI.Injected where
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type InjectedPropsO r = (
  fullScreen :: Boolean | r )
type InjectedPropsM  = (
)
foreign import injected :: forall a. IsTSRecord a (InjectedPropsO InjectedPropsM) InjectedPropsM => Function (Record a) ReactElement