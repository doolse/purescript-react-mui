module MaterialUI.Chip where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import chipClass :: forall props. ReactClass props


type ChipProps r= Record  (

  | r
) 

type ChipPropsExt r= StandardPropsExt  (
  avatar :: Untyped {-React.ReactElement-},
  deleteIcon :: Untyped {-React.ReactElement-},
  label :: Untyped {-React.ReactNode-},
  onDelete :: Untyped {-React.EventHandler-},
  onKeyDown :: Untyped {-React.EventHandler-}
  | r
) 

type ChipPropsO = ChipPropsExt  (

) 


avatar :: forall r. Untyped -> IProp (avatar :: Untyped | r)
avatar = mkProp "avatar"

deleteIcon :: forall r. Untyped -> IProp (deleteIcon :: Untyped | r)
deleteIcon = mkProp "deleteIcon"

label :: forall r. Untyped -> IProp (label :: Untyped | r)
label = mkProp "label"

onDelete :: forall r. Untyped -> IProp (onDelete :: Untyped | r)
onDelete = mkProp "onDelete"

onKeyDown :: forall r. Untyped -> IProp (onKeyDown :: Untyped | r)
onKeyDown = mkProp "onKeyDown"

chipU :: forall props. props -> Array ReactElement -> ReactElement
chipU = createElement chipClass

chip' :: Array (IProp ChipPropsO) -> Array ReactElement -> ReactElement
chip' = mkPropRecord >>> chipU

chip_ :: Array ReactElement -> ReactElement
chip_ = chipU {}

