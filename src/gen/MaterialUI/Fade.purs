module MaterialUI.Fade where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classFade :: forall a.ReactClass a

type FadePropsO r = (onExited :: EffectFn1 Any{-- interface HTMLElement--} Unit,
  key :: OneOf ((typed :: Number,
  typed :: String)),
  theme :: Any{-- interface "/home/jolz/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--},
  style :: Any{-- React.CSSProperties<>--},
  appear :: Boolean,
  enter :: Boolean,
  exit :: Boolean,
  in :: Boolean,
  mountOnEnter :: Boolean,
  unmountOnExit :: Boolean,
  timeout :: OneOf ((typed :: OptionRecord ((exit :: OneOf ((typed :: Number,
  typed :: Any{-- undefined--})),
  enter :: OneOf ((typed :: Number,
  typed :: Any{-- undefined--})))) (),
  typed :: Number)),
  addEndListener :: EffectFn2 Any{-- interface HTMLElement--} Any{-- ( => void)--} Unit,
  onEnter :: EffectFn2 Any{-- interface HTMLElement--} Boolean Unit,
  onEntering :: EffectFn2 Any{-- interface HTMLElement--} Boolean Unit,
  onEntered :: EffectFn2 Any{-- interface HTMLElement--} Boolean Unit,
  onExit :: EffectFn1 Any{-- interface HTMLElement--} Unit,
  onExiting :: EffectFn1 Any{-- interface HTMLElement--} Unit | r)

type FadePropsM  = ()

fade :: forall a.IsTSEq (Record a) (OptionRecord (FadePropsO FadePropsM) FadePropsM)  => Record a -> Array ReactElement -> ReactElement
fade = unsafeCreateElement classFade

fade_ :: Array ReactElement -> ReactElement
fade_ = unsafeCreateElement classFade {}

fade' :: forall a.IsTSEq (Record a) (OptionRecord (FadePropsO FadePropsM) FadePropsM)  => Record a -> ReactElement
fade' = unsafeCreateLeafElement classFade