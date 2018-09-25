module MaterialUI.ClickAwayListener where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)
import React.SyntheticEvent (SyntheticEvent)

foreign import classClickAwayListener :: forall a. ReactClass a

type ClickAwayListenerPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  mouseEvent :: OneOf (
    typed :: Any {-- false--}, 
    typed :: StringConst "onClick", 
    typed :: StringConst "onMouseDown", 
    typed :: StringConst "onMouseUp"
  ), 
  touchEvent :: OneOf (
    typed :: Any {-- false--}, 
    typed :: StringConst "onTouchEnd", 
    typed :: StringConst "onTouchStart"
  )
 | r)

type ClickAwayListenerPropsM  = (
  onClickAway :: EffectFn1 SyntheticEvent Unit
)

clickAwayListener :: forall a. IsTSEq (Record a) (OptionRecord (ClickAwayListenerPropsO ClickAwayListenerPropsM) ClickAwayListenerPropsM) => Record a -> Array ReactElement -> ReactElement
clickAwayListener = unsafeCreateElement classClickAwayListener

clickAwayListener_ :: Array ReactElement -> ReactElement
clickAwayListener_ = unsafeCreateElement classClickAwayListener {}

clickAwayListener' :: forall a. IsTSEq (Record a) (OptionRecord (ClickAwayListenerPropsO ClickAwayListenerPropsM) ClickAwayListenerPropsM) => Record a -> ReactElement
clickAwayListener' = unsafeCreateLeafElement classClickAwayListener