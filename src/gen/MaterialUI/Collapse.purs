module MaterialUI.Collapse where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classCollapse :: forall a. ReactClass a

type CollapsePropsO r = (
  className :: String, 
  key :: OneOf (
    typed :: Number, 
    typed :: String
  ), 
  collapsedHeight :: String, 
  component :: OneOf (
    typed :: Any {-- (props: "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/Collapse/Collapse".CollapseProps<> | {children: boolean | undefined | null | string | number | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--}, 
    typed :: String, 
    typed :: Any {-- React.ComponentClass<"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/Collapse/Collapse".CollapseProps<>, any>--}
  ), 
  theme :: Any {-- interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}, 
  timeout :: OneOf (
    typed :: OptionRecord (
      exit :: OneOf (
        typed :: Number, 
        typed :: Any {-- undefined--}
      ), 
      enter :: OneOf (
        typed :: Number, 
        typed :: Any {-- undefined--}
      )
    ) (
    ), 
    typed :: Number, 
    typed :: StringConst "auto"
  ), 
  style :: Any {-- React.CSSProperties<>--}, 
  in :: Boolean, 
  mountOnEnter :: Boolean, 
  unmountOnExit :: Boolean, 
  addEndListener :: EffectFn2 Any {-- interface HTMLElement--} Any {-- ( => void)--} Unit, 
  onEnter :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onEntering :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onEntered :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onExit :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  onExiting :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  onExited :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  appear :: Boolean, 
  enter :: Boolean, 
  exit :: Boolean, 
  classes :: Any {-- unknown--}, 
  innerRef :: OneOf (
    typed :: Any {-- React.RefObject<any>--}, 
    typed :: String, 
    typed :: Any -> Any
  )
 | r)

type CollapsePropsM  = (
)

collapse :: forall a. IsTSEq (Record a) (OptionRecord (CollapsePropsO CollapsePropsM) CollapsePropsM) => Record a -> Array ReactElement -> ReactElement
collapse = unsafeCreateElement classCollapse

collapse_ :: Array ReactElement -> ReactElement
collapse_ = unsafeCreateElement classCollapse {}

collapse' :: forall a. IsTSEq (Record a) (OptionRecord (CollapsePropsO CollapsePropsM) CollapsePropsM) => Record a -> ReactElement
collapse' = unsafeCreateLeafElement classCollapse