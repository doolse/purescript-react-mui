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
  touchEvent :: OneOf (
    typed :: StringConst "onTouchStart", 
    typed :: Any {-- false--}, 
    typed :: StringConst "onTouchEnd"
  ), 
  key :: OneOf (
    typed :: Number, 
    typed :: String
  ), 
  mouseEvent :: OneOf (
    typed :: StringConst "onMouseUp", 
    typed :: Any {-- false--}, 
    typed :: StringConst "onClick", 
    typed :: StringConst "onMouseDown"
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