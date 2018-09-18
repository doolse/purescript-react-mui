module ReactMUI.MountRenderer where
import Data.TSCompat (Any)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type MountRendererPropsO r = (
  context :: Any {--{}--},
  attachTo :: Any {--interface HTMLElement--},
  childContextTypes :: Any {--{}--} | r )
type MountRendererPropsM  = (
)
foreign import mountRenderer :: forall a. IsTSRecord a (MountRendererPropsO MountRendererPropsM) MountRendererPropsM => Function (Record a) ReactElement