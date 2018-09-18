module ReactMUI.ShallowRenderer where
import Data.TSCompat (Any)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type ShallowRendererPropsO r = (
  disableLifecycleMethods :: Boolean,
  lifecycleExperimental :: Boolean,
  context :: Any {--{}--} | r )
type ShallowRendererPropsM  = (
)
foreign import shallowRenderer :: forall a. IsTSRecord a (ShallowRendererPropsO ShallowRendererPropsM) ShallowRendererPropsM => Function (Record a) ReactElement