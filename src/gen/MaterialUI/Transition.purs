module MaterialUI.Transition where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classTransition :: forall a. ReactClass a

type TransitionPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  style :: Any {-- React.CSSProperties<>--}, 
  appear :: Boolean, 
  enter :: Boolean, 
  exit :: Boolean, 
  in :: Boolean, 
  mountOnEnter :: Boolean, 
  unmountOnExit :: Boolean, 
  timeout :: OneOf (
    typed :: Number, 
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
  addEndListener :: EffectFn2 Any {-- interface HTMLElement--} Any {-- ( => void)--} Unit, 
  onEnter :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onEntering :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onEntered :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onExit :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  onExiting :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  onExited :: EffectFn1 Any {-- interface HTMLElement--} Unit
 | r)

type TransitionPropsM  = (
)

transition :: forall a. IsTSEq (Record a) (OptionRecord (TransitionPropsO TransitionPropsM) TransitionPropsM) => Record a -> Array ReactElement -> ReactElement
transition = unsafeCreateElement classTransition

transition_ :: Array ReactElement -> ReactElement
transition_ = unsafeCreateElement classTransition {}

transition' :: forall a. IsTSEq (Record a) (OptionRecord (TransitionPropsO TransitionPropsM) TransitionPropsM) => Record a -> ReactElement
transition' = unsafeCreateLeafElement classTransition