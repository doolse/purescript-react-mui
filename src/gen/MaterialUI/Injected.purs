module MaterialUI.Injected where
import Data.TSCompat (OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classInjected :: forall a. ReactClass a

type InjectedPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  fullScreen :: Boolean
 | r)

type InjectedPropsM  = (
)

injected :: forall a. IsTSEq (Record a) (OptionRecord (InjectedPropsO InjectedPropsM) InjectedPropsM) => Record a -> Array ReactElement -> ReactElement
injected = unsafeCreateElement classInjected

injected_ :: Array ReactElement -> ReactElement
injected_ = unsafeCreateElement classInjected {}

injected' :: forall a. IsTSEq (Record a) (OptionRecord (InjectedPropsO InjectedPropsM) InjectedPropsM) => Record a -> ReactElement
injected' = unsafeCreateLeafElement classInjected