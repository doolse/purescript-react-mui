module MaterialUI.Grow where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classGrow :: forall a. ReactClass a

type GrowPropsO r = (
  exit :: Boolean, 
  key :: OneOf (
    typed :: Number, 
    typed :: String
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
  enter :: Boolean
 | r)

type GrowPropsM  = (
)

grow :: forall a. IsTSEq (Record a) (OptionRecord (GrowPropsO GrowPropsM) GrowPropsM) => Record a -> Array ReactElement -> ReactElement
grow = unsafeCreateElement classGrow

grow_ :: Array ReactElement -> ReactElement
grow_ = unsafeCreateElement classGrow {}

grow' :: forall a. IsTSEq (Record a) (OptionRecord (GrowPropsO GrowPropsM) GrowPropsM) => Record a -> ReactElement
grow' = unsafeCreateLeafElement classGrow