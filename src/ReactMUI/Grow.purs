module ReactMUI.Grow where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (ReactElement)

type GrowPropsO r = (
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
  exit :: Boolean | r )
type GrowPropsM  = (
)
foreign import grow :: forall a. IsTSRecord a (GrowPropsO GrowPropsM) GrowPropsM => Function (Record a) ReactElement