module MaterialUI.NoSsr where
import Data.TSCompat (OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement, ReactNode)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classNoSsr :: forall a.ReactClass a

type NoSsrPropsO r = (fallback :: ReactNode,
  key :: OneOf ((typed :: Number,
  typed :: String)) | r)

type NoSsrPropsM  = ()

noSsr :: forall a.IsTSEq (Record a) (OptionRecord (NoSsrPropsO NoSsrPropsM) NoSsrPropsM)  => Record a -> Array ReactElement -> ReactElement
noSsr = unsafeCreateElement classNoSsr

noSsr_ :: Array ReactElement -> ReactElement
noSsr_ = unsafeCreateElement classNoSsr {}

noSsr' :: forall a.IsTSEq (Record a) (OptionRecord (NoSsrPropsO NoSsrPropsM) NoSsrPropsM)  => Record a -> ReactElement
noSsr' = unsafeCreateLeafElement classNoSsr