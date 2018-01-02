module MaterialUI.CardHeader where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import cardHeaderClass :: forall props. ReactClass props


type CardHeaderProps r= Record  (

  | r
) 

type CardHeaderPropsExt r= StandardPropsExt  (
  action :: Untyped {-React.ReactNode-},
  avatar :: Untyped {-React.ReactNode-},
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  subheader :: Untyped {-React.ReactNode-},
  title :: Untyped {-React.ReactNode-}
  | r
) 

type CardHeaderPropsO = CardHeaderPropsExt  (

) 


action :: forall r. Untyped -> IProp (action :: Untyped | r)
action = mkProp "action"

avatar :: forall r. Untyped -> IProp (avatar :: Untyped | r)
avatar = mkProp "avatar"

subheader :: forall r. Untyped -> IProp (subheader :: Untyped | r)
subheader = mkProp "subheader"

title :: forall r. Untyped -> IProp (title :: Untyped | r)
title = mkProp "title"

cardHeaderU :: forall props. props -> Array ReactElement -> ReactElement
cardHeaderU = createElement cardHeaderClass

cardHeader' :: Array (IProp CardHeaderPropsO) -> Array ReactElement -> ReactElement
cardHeader' = mkPropRecord >>> cardHeaderU

cardHeader_ :: Array ReactElement -> ReactElement
cardHeader_ = cardHeaderU {}

