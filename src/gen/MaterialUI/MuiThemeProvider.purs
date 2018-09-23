module MaterialUI.MuiThemeProvider where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import React (unsafeCreateElementDynamic, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classMuiThemeProvider :: forall a. ReactClass a

type MuiThemeProviderPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  sheetsManager :: Any {--Map<interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/withStyles".StylesCreator, Map<interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme, interface SheetManagerTheme>>--},
  disableStylesGeneration :: Boolean | r )

type MuiThemeProviderPropsM  = (
  theme :: OneOf ((
    typed :: Any {--interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--},
    typed :: Function (OneOf ((
      typed :: Any {--null--},
      typed :: Any {--interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}))) (Any {--interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}))))

muiThemeProvider :: forall a. IsTSEq (Record a) (OptionRecord (MuiThemeProviderPropsO MuiThemeProviderPropsM) MuiThemeProviderPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
muiThemeProvider = unsafeCreateElementDynamic classMuiThemeProvider

muiThemeProvider_ :: Function (Array ReactElement) ReactElement
muiThemeProvider_ = unsafeCreateElementDynamic classMuiThemeProvider {}

muiThemeProvider' :: forall a. IsTSEq (Record a) (OptionRecord (MuiThemeProviderPropsO MuiThemeProviderPropsM) MuiThemeProviderPropsM) => Function (Record a) ReactElement
muiThemeProvider' = unsafeCreateLeafElement classMuiThemeProvider