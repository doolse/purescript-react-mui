module MaterialUI.StyledComponent where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classStyledComponent :: forall a. ReactClass a

type StyledComponentPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  classes :: Any {-- unknown--}, 
  innerRef :: OneOf (
    typed :: String, 
    typed :: Any -> Any, 
    typed :: Any {-- React.RefObject<any>--}
  )
 | r)

type StyledComponentPropsM  = (
)

styledComponent :: forall a. IsTSEq (Record a) (OptionRecord (StyledComponentPropsO StyledComponentPropsM) StyledComponentPropsM) => Record a -> Array ReactElement -> ReactElement
styledComponent = unsafeCreateElement classStyledComponent

styledComponent_ :: Array ReactElement -> ReactElement
styledComponent_ = unsafeCreateElement classStyledComponent {}

styledComponent' :: forall a. IsTSEq (Record a) (OptionRecord (StyledComponentPropsO StyledComponentPropsM) StyledComponentPropsM) => Record a -> ReactElement
styledComponent' = unsafeCreateLeafElement classStyledComponent