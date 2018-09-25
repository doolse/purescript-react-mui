module MaterialUI.RootRef where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classRootRef :: forall a. ReactClass a

type RootRefPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  rootRef :: OneOf (
    typed :: EffectFn1 (OneOf (
      typed :: Any {-- null--}, 
      typed :: Any {-- <T>--}
    )) Unit, 
    typed :: Any {-- React.RefObject<<T>>--}
  )
 | r)

type RootRefPropsM  = (
)

rootRef :: forall a. IsTSEq (Record a) (OptionRecord (RootRefPropsO RootRefPropsM) RootRefPropsM) => Record a -> Array ReactElement -> ReactElement
rootRef = unsafeCreateElement classRootRef

rootRef_ :: Array ReactElement -> ReactElement
rootRef_ = unsafeCreateElement classRootRef {}

rootRef' :: forall a. IsTSEq (Record a) (OptionRecord (RootRefPropsO RootRefPropsM) RootRefPropsM) => Record a -> ReactElement
rootRef' = unsafeCreateLeafElement classRootRef