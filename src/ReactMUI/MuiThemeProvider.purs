module ReactMUI.MuiThemeProvider where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import React (ReactElement)

type MuiThemeProviderPropsO r = (
  sheetsManager :: Any {--Map<interface "/home/jolz/git/material-ui/packages/material-ui/src/styles/withStyles".StylesCreator, Map<interface "/home/jolz/git/material-ui/packages/material-ui/src/styles/createMuiTheme".Theme, interface SheetManagerTheme>>--},
  disableStylesGeneration :: Boolean | r )
type MuiThemeProviderPropsM  = (
  theme :: OneOf ((
    typed :: Any {--interface "/home/jolz/git/material-ui/packages/material-ui/src/styles/createMuiTheme".Theme--},
    typed :: Function (OneOf ((
      typed :: Any {--null--},
      typed :: Any {--interface "/home/jolz/git/material-ui/packages/material-ui/src/styles/createMuiTheme".Theme--}))) (Any {--interface "/home/jolz/git/material-ui/packages/material-ui/src/styles/createMuiTheme".Theme--}))))
foreign import muiThemeProvider :: forall a. IsTSRecord a (MuiThemeProviderPropsO MuiThemeProviderPropsM) MuiThemeProviderPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)