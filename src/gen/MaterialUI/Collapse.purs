module MaterialUI.Collapse where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classCollapse :: forall a. ReactClass a

type CollapsePropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  collapsedHeight :: String, 
  component :: OneOf (
    typed :: String, 
    typed :: Any {-- React.ComponentClass<"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/Collapse/Collapse".CollapseProps<>, any>--}, 
    typed :: Any {-- (props: "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/Collapse/Collapse".CollapseProps<> | {children: boolean | undefined | null | string | number | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--}
  ), 
  theme :: Any {-- interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}, 
  timeout :: OneOf (
    typed :: Number, 
    typed :: StringConst "auto", 
    typed :: OptionRecord (
      enter :: OneOf (
        typed :: Any {-- undefined--}, 
        typed :: Number
      ), 
      exit :: OneOf (
        typed :: Any {-- undefined--}, 
        typed :: Number
      )
    ) (
    )
  ), 
  style :: Any {-- React.CSSProperties<>--}, 
  in :: Boolean, 
  mountOnEnter :: Boolean, 
  unmountOnExit :: Boolean, 
  addEndListener :: EffectFn2 Any {-- interface HTMLElement--} Any {-- ( => void)--} Unit, 
  appear :: Boolean, 
  enter :: Boolean, 
  exit :: Boolean, 
  classes :: Any {-- unknown--}, 
  innerRef :: OneOf (
    typed :: String, 
    typed :: Any -> Any, 
    typed :: Any {-- React.RefObject<any>--}
  ), 
  className :: String
 | r)

type CollapsePropsM  = (
)

type CollapsePropsE r = (
  onEnter :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onEntering :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onEntered :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onExit :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  onExiting :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  onExited :: EffectFn1 Any {-- interface HTMLElement--} Unit
 | r)

collapse :: forall a. IsTSEq (Record a) (OptionRecord (CollapsePropsO CollapsePropsM) CollapsePropsM) => Record a -> Array ReactElement -> ReactElement
collapse = unsafeCreateElement classCollapse

collapse_ :: Array ReactElement -> ReactElement
collapse_ = unsafeCreateElement classCollapse {}

collapse' :: forall a. IsTSEq (Record a) (OptionRecord (CollapsePropsO CollapsePropsM) CollapsePropsM) => Record a -> ReactElement
collapse' = unsafeCreateLeafElement classCollapse

collapse'' :: forall a. IsTSEq (Record a) (OptionRecord (CollapsePropsO (CollapsePropsE CollapsePropsM)) CollapsePropsM) => Record a -> Array ReactElement -> ReactElement
collapse'' = unsafeCreateElement classCollapse