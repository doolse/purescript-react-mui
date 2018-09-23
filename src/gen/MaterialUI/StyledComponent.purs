module MaterialUI.StyledComponent where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import React (unsafeCreateElementDynamic, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classStyledComponent :: forall a. ReactClass a

type StyledComponentPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function Any Any,
    typed :: Any {--React.RefObject<any>--})) | r )

type StyledComponentPropsM  = (
)

styledComponent :: forall a. IsTSEq (Record a) (OptionRecord (StyledComponentPropsO StyledComponentPropsM) StyledComponentPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
styledComponent = unsafeCreateElementDynamic classStyledComponent

styledComponent_ :: Function (Array ReactElement) ReactElement
styledComponent_ = unsafeCreateElementDynamic classStyledComponent {}

styledComponent' :: forall a. IsTSEq (Record a) (OptionRecord (StyledComponentPropsO StyledComponentPropsM) StyledComponentPropsM) => Function (Record a) ReactElement
styledComponent' = unsafeCreateLeafElement classStyledComponent