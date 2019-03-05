module MaterialUI.WithWidth where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classWithWidth :: forall a. ReactClass a

type WithWidthPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  innerRef :: OneOf (
    typed :: String, 
    typed :: Any -> Any, 
    typed :: Any {-- React.RefObject<any>--}
  ), 
  width :: OneOf (
    typed :: StringConst "xs", 
    typed :: StringConst "sm", 
    typed :: StringConst "md", 
    typed :: StringConst "lg", 
    typed :: StringConst "xl"
  )
 | r)

type WithWidthPropsM  = (
)

withWidth :: forall a. IsTSEq (Record a) (OptionRecord (WithWidthPropsO WithWidthPropsM) WithWidthPropsM) => Record a -> Array ReactElement -> ReactElement
withWidth = unsafeCreateElement classWithWidth

withWidth_ :: Array ReactElement -> ReactElement
withWidth_ = unsafeCreateElement classWithWidth {}

withWidth' :: forall a. IsTSEq (Record a) (OptionRecord (WithWidthPropsO WithWidthPropsM) WithWidthPropsM) => Record a -> ReactElement
withWidth' = unsafeCreateLeafElement classWithWidth