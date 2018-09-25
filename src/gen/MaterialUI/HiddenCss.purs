module MaterialUI.HiddenCss where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classHiddenCss :: forall a. ReactClass a

type HiddenCssPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  lgDown :: Boolean, 
  lgUp :: Boolean, 
  mdDown :: Boolean, 
  mdUp :: Boolean, 
  only :: OneOf (
    typed :: StringConst "xs", 
    typed :: StringConst "sm", 
    typed :: StringConst "md", 
    typed :: StringConst "lg", 
    typed :: StringConst "xl", 
    typed :: Array Any {-- "\"/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/styles/createBreakpoints\".Breakpoint"--}
  ), 
  smDown :: Boolean, 
  smUp :: Boolean, 
  xlDown :: Boolean, 
  xlUp :: Boolean, 
  xsDown :: Boolean, 
  xsUp :: Boolean
 | r)

type HiddenCssPropsM  = (
)

hiddenCss :: forall a. IsTSEq (Record a) (OptionRecord (HiddenCssPropsO HiddenCssPropsM) HiddenCssPropsM) => Record a -> Array ReactElement -> ReactElement
hiddenCss = unsafeCreateElement classHiddenCss

hiddenCss_ :: Array ReactElement -> ReactElement
hiddenCss_ = unsafeCreateElement classHiddenCss {}

hiddenCss' :: forall a. IsTSEq (Record a) (OptionRecord (HiddenCssPropsO HiddenCssPropsM) HiddenCssPropsM) => Record a -> ReactElement
hiddenCss' = unsafeCreateLeafElement classHiddenCss