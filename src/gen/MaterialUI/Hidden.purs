module MaterialUI.Hidden where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classHidden :: forall a. ReactClass a

type HiddenPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  implementation :: OneOf (
    typed :: StringConst "js", 
    typed :: StringConst "css"
  ), 
  initialWidth :: OneOf (
    typed :: StringConst "xs", 
    typed :: StringConst "sm", 
    typed :: StringConst "md", 
    typed :: StringConst "lg", 
    typed :: StringConst "xl"
  ), 
  lgDown :: Boolean, 
  lgUp :: Boolean, 
  mdDown :: Boolean, 
  mdUp :: Boolean, 
  smDown :: Boolean, 
  smUp :: Boolean, 
  xlDown :: Boolean, 
  xlUp :: Boolean, 
  xsDown :: Boolean, 
  xsUp :: Boolean, 
  classes :: Any {-- unknown--}, 
  innerRef :: OneOf (
    typed :: String, 
    typed :: Any -> Any, 
    typed :: Any {-- React.RefObject<any>--}
  ), 
  className :: String, 
  style :: Any {-- React.CSSProperties<>--}
 | r)

type HiddenPropsM  = (
)

type HiddenPropsE r = (
  only :: OneOf (
    typed :: StringConst "xs", 
    typed :: StringConst "sm", 
    typed :: StringConst "md", 
    typed :: StringConst "lg", 
    typed :: StringConst "xl", 
    typed :: Array Any {-- "\"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/styles/createBreakpoints\".Breakpoint"--}
  )
 | r)

hidden :: forall a. IsTSEq (Record a) (OptionRecord (HiddenPropsO HiddenPropsM) HiddenPropsM) => Record a -> Array ReactElement -> ReactElement
hidden = unsafeCreateElement classHidden

hidden_ :: Array ReactElement -> ReactElement
hidden_ = unsafeCreateElement classHidden {}

hidden' :: forall a. IsTSEq (Record a) (OptionRecord (HiddenPropsO HiddenPropsM) HiddenPropsM) => Record a -> ReactElement
hidden' = unsafeCreateLeafElement classHidden

hidden'' :: forall a. IsTSEq (Record a) (OptionRecord (HiddenPropsO (HiddenPropsE HiddenPropsM)) HiddenPropsM) => Record a -> Array ReactElement -> ReactElement
hidden'' = unsafeCreateElement classHidden