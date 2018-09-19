module ReactMUI.ClickAwayListener where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import Data.TSCompat.React (ReactNode)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (ReactElement)

type ClickAwayListenerPropsO r = (
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
  children :: ReactNode,
  onClickAway :: EffectFn1 (Any {--React.ChangeEvent<{}>--}) Unit)

foreign import clickAwayListener :: forall a. IsTSRecord a (ClickAwayListenerPropsO ClickAwayListenerPropsM) ClickAwayListenerPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)