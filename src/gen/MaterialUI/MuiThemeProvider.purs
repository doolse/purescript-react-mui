module MaterialUI.MuiThemeProvider where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classMuiThemeProvider :: forall a.ReactClass a

type MuiThemeProviderPropsO r = (disableStylesGeneration :: Boolean,
  key :: OneOf ((typed :: Number,
  typed :: String)),
  sheetsManager :: Any{-- Map<interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/withStyles".StylesCreator, Map<interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme, interface SheetManagerTheme>>--} | r)

type MuiThemeProviderPropsM  = (theme :: OneOf ((typed :: OneOf ((typed :: Any{-- interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--},
  typed :: Any{-- null--})) -> Any{-- interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--},
  typed :: Any{-- interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--})))

muiThemeProvider :: forall a.IsTSEq (Record a) (OptionRecord (MuiThemeProviderPropsO MuiThemeProviderPropsM) MuiThemeProviderPropsM)  => Record a -> Array ReactElement -> ReactElement
muiThemeProvider = unsafeCreateElement classMuiThemeProvider

muiThemeProvider_ :: Array ReactElement -> ReactElement
muiThemeProvider_ = unsafeCreateElement classMuiThemeProvider {}

muiThemeProvider' :: forall a.IsTSEq (Record a) (OptionRecord (MuiThemeProviderPropsO MuiThemeProviderPropsM) MuiThemeProviderPropsM)  => Record a -> ReactElement
muiThemeProvider' = unsafeCreateLeafElement classMuiThemeProvider