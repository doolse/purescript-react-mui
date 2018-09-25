module MaterialUI.MuiThemeProvider where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classMuiThemeProvider :: forall a. ReactClass a

type MuiThemeProviderPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  sheetsManager :: Any {-- Map<interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/withStyles".StylesCreator, Map<interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme, interface SheetManagerTheme>>--}, 
  disableStylesGeneration :: Boolean
 | r)

type MuiThemeProviderPropsM  = (
  theme :: OneOf (
    typed :: Any {-- interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}, 
    typed :: OneOf (
      typed :: Any {-- null--}, 
      typed :: Any {-- interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}
    ) -> Any {-- interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}
  )
)

muiThemeProvider :: forall a. IsTSEq (Record a) (OptionRecord (MuiThemeProviderPropsO MuiThemeProviderPropsM) MuiThemeProviderPropsM) => Record a -> Array ReactElement -> ReactElement
muiThemeProvider = unsafeCreateElement classMuiThemeProvider

muiThemeProvider_ :: Array ReactElement -> ReactElement
muiThemeProvider_ = unsafeCreateElement classMuiThemeProvider {}

muiThemeProvider' :: forall a. IsTSEq (Record a) (OptionRecord (MuiThemeProviderPropsO MuiThemeProviderPropsM) MuiThemeProviderPropsM) => Record a -> ReactElement
muiThemeProvider' = unsafeCreateLeafElement classMuiThemeProvider