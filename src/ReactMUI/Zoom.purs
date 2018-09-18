module ReactMUI.Zoom where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (ReactElement)

type ZoomPropsO r = (
  theme :: Any {--interface "/home/jolz/git/material-ui/packages/material-ui/src/styles/createMuiTheme".Theme--},
  style :: Any {--React.CSSProperties<>--},
  appear :: Boolean,
  enter :: Boolean,
  exit :: Boolean,
  in :: Boolean,
  mountOnEnter :: Boolean,
  unmountOnExit :: Boolean,
  timeout :: OneOf ((
    typed :: Number,
    typed :: Any {--{enter: undefined | number, exit: undefined | number}--})),
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
  onExited :: EffectFn1 (Any {--interface HTMLElement--}) Unit | r )
type ZoomPropsM  = (
)
foreign import zoom :: forall a. IsTSRecord a (ZoomPropsO ZoomPropsM) ZoomPropsM => Function (Record a) ReactElement