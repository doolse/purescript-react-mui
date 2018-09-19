module ReactMUI.StyledComponent where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type StyledComponentPropsO r = (
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})) | r )

type StyledComponentPropsM  = (
)

foreign import styledComponent :: forall a. IsTSRecord a (StyledComponentPropsO StyledComponentPropsM) StyledComponentPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

styledComponent_ :: Function (Array ReactElement) ReactElement
styledComponent_ = styledComponent {}