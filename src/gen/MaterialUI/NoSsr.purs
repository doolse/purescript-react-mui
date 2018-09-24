module MaterialUI.NoSsr where
import Data.TSCompat (OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (ReactNode)
import React (unsafeCreateElement, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classNoSsr :: forall a. ReactClass a

type NoSsrPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  fallback :: ReactNode | r )

type NoSsrPropsM  = (
)

noSsr :: forall a. IsTSEq (Record a) (OptionRecord (NoSsrPropsO NoSsrPropsM) NoSsrPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
noSsr = unsafeCreateElement classNoSsr

noSsr_ :: Function (Array ReactElement) ReactElement
noSsr_ = unsafeCreateElement classNoSsr {}

noSsr' :: forall a. IsTSEq (Record a) (OptionRecord (NoSsrPropsO NoSsrPropsM) NoSsrPropsM) => Function (Record a) ReactElement
noSsr' = unsafeCreateLeafElement classNoSsr