module ReactMUI.Portal where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type PortalPropsO r = (
  container :: OneOf ((
    typed :: Any {--interface Element--},
    typed :: Any {--React.Component<any, {}, any>--},
    typed :: Any {--( => interface Element | React.Component<any, {}, any>)--})),
  disablePortal :: Boolean,
  onRendered :: Any {--( => void)--} | r )
type PortalPropsM  = (
)
foreign import portal :: forall a. IsTSRecord a (PortalPropsO PortalPropsM) PortalPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)