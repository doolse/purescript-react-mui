module ReactMUI.Fade where
import Data.TSCompat (Any, OneOf)
import Data.TSCompat.Class (class IsTSRecord)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (ReactElement)

type FadePropsO r = (
  theme :: Any {--interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--},
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

type FadePropsM  = (
)

foreign import fade :: forall a. IsTSRecord a (FadePropsO FadePropsM) FadePropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

fade_ :: Function (Array ReactElement) ReactElement
fade_ = fade {}