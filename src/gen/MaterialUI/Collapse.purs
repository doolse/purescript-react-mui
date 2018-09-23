module MaterialUI.Collapse where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateElementDynamic, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classCollapse :: forall a. ReactClass a

type CollapsePropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  collapsedHeight :: String,
  component :: OneOf ((
    typed :: String,
    typed :: Any {--React.ComponentClass<"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/Collapse/Collapse".CollapseProps<>, any>--},
    typed :: Any {--(props: "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/Collapse/Collapse".CollapseProps<> | {children: undefined | null | string | number | false | true | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--})),
  theme :: Any {--interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--},
  timeout :: OneOf ((
    typed :: Number,
    typed :: StringConst ("auto"),
    typed :: OptionRecord ((
      enter :: OneOf ((
        typed :: Any {--undefined--},
        typed :: Number)),
      exit :: OneOf ((
        typed :: Any {--undefined--},
        typed :: Number)))) ((
)))),
  style :: Any {--React.CSSProperties<>--},
  in :: Boolean,
  mountOnEnter :: Boolean,
  unmountOnExit :: Boolean,
  addEndListener :: EffectFn2 (Any {--interface HTMLElement--}) (Any {--( => void)--}) Unit,
  onEnter :: EffectFn2 (Any {--interface HTMLElement--}) (OneOf ((
    typed :: Any {--false--},
    typed :: Any {--true--}))) Unit,
  onEntering :: EffectFn2 (Any {--interface HTMLElement--}) (OneOf ((
    typed :: Any {--false--},
    typed :: Any {--true--}))) Unit,
  onEntered :: EffectFn2 (Any {--interface HTMLElement--}) (OneOf ((
    typed :: Any {--false--},
    typed :: Any {--true--}))) Unit,
  onExit :: EffectFn1 (Any {--interface HTMLElement--}) Unit,
  onExiting :: EffectFn1 (Any {--interface HTMLElement--}) Unit,
  onExited :: EffectFn1 (Any {--interface HTMLElement--}) Unit,
  appear :: Boolean,
  enter :: Boolean,
  exit :: Boolean,
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function Any Any,
    typed :: Any {--React.RefObject<any>--})),
  className :: String | r )

type CollapsePropsM  = (
)

collapse :: forall a. IsTSEq (Record a) (OptionRecord (CollapsePropsO CollapsePropsM) CollapsePropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
collapse = unsafeCreateElementDynamic classCollapse

collapse_ :: Function (Array ReactElement) ReactElement
collapse_ = unsafeCreateElementDynamic classCollapse {}

collapse' :: forall a. IsTSEq (Record a) (OptionRecord (CollapsePropsO CollapsePropsM) CollapsePropsM) => Function (Record a) ReactElement
collapse' = unsafeCreateLeafElement classCollapse