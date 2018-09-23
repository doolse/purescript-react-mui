module MaterialUI.ClickAwayListener where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (unsafeCreateElementDynamic, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classClickAwayListener :: forall a. ReactClass a

type ClickAwayListenerPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  mouseEvent :: OneOf ((
    typed :: Any {--false--},
    typed :: StringConst ("onClick"),
    typed :: StringConst ("onMouseDown"),
    typed :: StringConst ("onMouseUp"))),
  touchEvent :: OneOf ((
    typed :: Any {--false--},
    typed :: StringConst ("onTouchEnd"),
    typed :: StringConst ("onTouchStart"))) | r )

type ClickAwayListenerPropsM  = (
  onClickAway :: EffectFn1 (Any {--React.ChangeEvent<{}>--}) Unit)

clickAwayListener :: forall a. IsTSEq (Record a) (OptionRecord (ClickAwayListenerPropsO ClickAwayListenerPropsM) ClickAwayListenerPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
clickAwayListener = unsafeCreateElementDynamic classClickAwayListener

clickAwayListener_ :: Function (Array ReactElement) ReactElement
clickAwayListener_ = unsafeCreateElementDynamic classClickAwayListener {}

clickAwayListener' :: forall a. IsTSEq (Record a) (OptionRecord (ClickAwayListenerPropsO ClickAwayListenerPropsM) ClickAwayListenerPropsM) => Function (Record a) ReactElement
clickAwayListener' = unsafeCreateLeafElement classClickAwayListener