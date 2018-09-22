module ReactMUI.Fade where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateElementDynamic, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classFade :: forall a. ReactClass a

type FadePropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
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

fade :: forall a. IsTSEq (Record a) (OptionRecord (FadePropsO FadePropsM) FadePropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
fade = unsafeCreateElementDynamic classFade

fade_ :: Function (Array ReactElement) ReactElement
fade_ = unsafeCreateElementDynamic classFade {}

fade' :: forall a. IsTSEq (Record a) (OptionRecord (FadePropsO FadePropsM) FadePropsM) => Function (Record a) ReactElement
fade' = unsafeCreateLeafElement classFade