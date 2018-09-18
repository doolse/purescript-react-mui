module ReactMUI.RootRef where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (ReactElement)

type RootRefPropsO r = (
  rootRef :: OneOf ((
    typed :: EffectFn1 (OneOf ((
      typed :: Any {--null--},
      typed :: Any {--<T>--}))) Unit,
    typed :: Any {--React.RefObject<<T>>--})) | r )
type RootRefPropsM  = (
)
foreign import rootRef :: forall a. IsTSRecord a (RootRefPropsO RootRefPropsM) RootRefPropsM => Function (Record a) ReactElement