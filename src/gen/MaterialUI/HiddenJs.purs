module MaterialUI.HiddenJs where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classHiddenJs :: forall a. ReactClass a

type HiddenJsPropsO r = (
  xsUp :: Boolean, 
  key :: OneOf (
    typed :: Number, 
    typed :: String
  ), 
  initialWidth :: OneOf (
    typed :: StringConst "xl", 
    typed :: StringConst "xs", 
    typed :: StringConst "sm", 
    typed :: StringConst "md", 
    typed :: StringConst "lg"
  ), 
  lgDown :: Boolean, 
  lgUp :: Boolean, 
  mdDown :: Boolean, 
  mdUp :: Boolean, 
  only :: OneOf (
    typed :: Array Any {-- "\"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/styles/createBreakpoints\".Breakpoint"--}, 
    typed :: StringConst "xs", 
    typed :: StringConst "sm", 
    typed :: StringConst "md", 
    typed :: StringConst "lg", 
    typed :: StringConst "xl"
  ), 
  smDown :: Boolean, 
  smUp :: Boolean, 
  xlDown :: Boolean, 
  xlUp :: Boolean, 
  xsDown :: Boolean
 | r)

type HiddenJsPropsM  = (
)

hiddenJs :: forall a. IsTSEq (Record a) (OptionRecord (HiddenJsPropsO HiddenJsPropsM) HiddenJsPropsM) => Record a -> Array ReactElement -> ReactElement
hiddenJs = unsafeCreateElement classHiddenJs

hiddenJs_ :: Array ReactElement -> ReactElement
hiddenJs_ = unsafeCreateElement classHiddenJs {}

hiddenJs' :: forall a. IsTSEq (Record a) (OptionRecord (HiddenJsPropsO HiddenJsPropsM) HiddenJsPropsM) => Record a -> ReactElement
hiddenJs' = unsafeCreateLeafElement classHiddenJs