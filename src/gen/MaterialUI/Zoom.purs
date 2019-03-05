module MaterialUI.Zoom where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1, EffectFn2)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classZoom :: forall a. ReactClass a

type ZoomPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  theme :: Any {-- interface "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/styles/createMuiTheme".Theme--}, 
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
  addEndListener :: EffectFn2 Any {-- interface HTMLElement--} Any {-- ( => void)--} Unit
 | r)

type ZoomPropsM  = (
)

type ZoomPropsE r = (
  onEnter :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onEntering :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onEntered :: EffectFn2 Any {-- interface HTMLElement--} Boolean Unit, 
  onExit :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  onExiting :: EffectFn1 Any {-- interface HTMLElement--} Unit, 
  onExited :: EffectFn1 Any {-- interface HTMLElement--} Unit
 | r)

zoom :: forall a. IsTSEq (Record a) (OptionRecord (ZoomPropsO ZoomPropsM) ZoomPropsM) => Record a -> Array ReactElement -> ReactElement
zoom = unsafeCreateElement classZoom

zoom_ :: Array ReactElement -> ReactElement
zoom_ = unsafeCreateElement classZoom {}

zoom' :: forall a. IsTSEq (Record a) (OptionRecord (ZoomPropsO ZoomPropsM) ZoomPropsM) => Record a -> ReactElement
zoom' = unsafeCreateLeafElement classZoom

zoom'' :: forall a. IsTSEq (Record a) (OptionRecord (ZoomPropsO (ZoomPropsE ZoomPropsM)) ZoomPropsM) => Record a -> Array ReactElement -> ReactElement
zoom'' = unsafeCreateElement classZoom