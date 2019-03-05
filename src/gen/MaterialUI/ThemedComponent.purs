module MaterialUI.ThemedComponent where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classThemedComponent :: forall a. ReactClass a

type ThemedComponentPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  innerRef :: OneOf (
    typed :: String, 
    typed :: Any -> Any, 
    typed :: Any {-- React.RefObject<any>--}
  ), 
  theme :: Any {-- interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}
 | r)

type ThemedComponentPropsM  = (
)

themedComponent :: forall a. IsTSEq (Record a) (OptionRecord (ThemedComponentPropsO ThemedComponentPropsM) ThemedComponentPropsM) => Record a -> Array ReactElement -> ReactElement
themedComponent = unsafeCreateElement classThemedComponent

themedComponent_ :: Array ReactElement -> ReactElement
themedComponent_ = unsafeCreateElement classThemedComponent {}

themedComponent' :: forall a. IsTSEq (Record a) (OptionRecord (ThemedComponentPropsO ThemedComponentPropsM) ThemedComponentPropsM) => Record a -> ReactElement
themedComponent' = unsafeCreateLeafElement classThemedComponent