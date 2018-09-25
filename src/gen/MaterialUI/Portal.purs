module MaterialUI.Portal where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classPortal :: forall a. ReactClass a

type PortalPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  container :: OneOf (
    typed :: Any {-- interface Element--}, 
    typed :: Any {-- React.Component<any, {}, any>--}, 
    typed :: Any {-- ( => interface Element | React.Component<any, {}, any>)--}
  ), 
  disablePortal :: Boolean, 
  onRendered :: Any {-- ( => void)--}
 | r)

type PortalPropsM  = (
)

portal :: forall a. IsTSEq (Record a) (OptionRecord (PortalPropsO PortalPropsM) PortalPropsM) => Record a -> ReactElement -> ReactElement
portal = unsafeCreateElement classPortal

portal_ :: ReactElement -> ReactElement
portal_ = unsafeCreateElement classPortal {}

portal' :: forall a. IsTSEq (Record a) (OptionRecord (PortalPropsO PortalPropsM) PortalPropsM) => Record a -> ReactElement
portal' = unsafeCreateLeafElement classPortal