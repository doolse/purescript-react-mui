module MaterialUI.Hidden where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classHidden :: forall a. ReactClass a

type HiddenPropsO r = (
  style :: Any {-- React.CSSProperties<>--}, 
  key :: OneOf (
    typed :: Number, 
    typed :: String
  ), 
  implementation :: OneOf (
    typed :: StringConst "css", 
    typed :: StringConst "js"
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
  xsDown :: Boolean, 
  xsUp :: Boolean, 
  classes :: Any {-- unknown--}, 
  innerRef :: OneOf (
    typed :: Any {-- React.RefObject<any>--}, 
    typed :: String, 
    typed :: Any -> Any
  ), 
  className :: String
 | r)

type HiddenPropsM  = (
)

hidden :: forall a. IsTSEq (Record a) (OptionRecord (HiddenPropsO HiddenPropsM) HiddenPropsM) => Record a -> Array ReactElement -> ReactElement
hidden = unsafeCreateElement classHidden

hidden_ :: Array ReactElement -> ReactElement
hidden_ = unsafeCreateElement classHidden {}

hidden' :: forall a. IsTSEq (Record a) (OptionRecord (HiddenPropsO HiddenPropsM) HiddenPropsM) => Record a -> ReactElement
hidden' = unsafeCreateLeafElement classHidden