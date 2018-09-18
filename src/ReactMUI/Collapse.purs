module ReactMUI.Collapse where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (ReactElement)

type CollapsePropsO r = (
  collapsedHeight :: String,
  component :: OneOf ((
    typed :: String,
    typed :: Any {--React.ComponentClass<"/home/jolz/git/material-ui/packages/material-ui/src/Collapse/Collapse".CollapseProps<>, any>--},
    typed :: Any {--(props: "/home/jolz/git/material-ui/packages/material-ui/src/Collapse/Collapse".CollapseProps<> | {children: undefined | null | string | number | false | true | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--})),
  theme :: Any {--interface "/home/jolz/git/material-ui/packages/material-ui/src/styles/createMuiTheme".Theme--},
  timeout :: OneOf ((
    typed :: Number,
    typed :: StringConst ("auto"),
    typed :: Any {--{enter: undefined | number, exit: undefined | number}--})),
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
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})),
  className :: String | r )
type CollapsePropsM  = (
)
foreign import collapse :: forall a. IsTSRecord a (CollapsePropsO CollapsePropsM) CollapsePropsM => Function (Record a) (Function (Array ReactElement) ReactElement)