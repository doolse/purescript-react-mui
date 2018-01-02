module MaterialUI.Avatar where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import avatarClass :: forall props. ReactClass props


type AvatarProps r= Record  (

  | r
) 

type AvatarPropsExt r= StandardPropsExt  (
  alt :: String,
  childrenClassName :: String,
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  imgProps :: Untyped {-Identifier:Object-},
  sizes :: String,
  src :: String,
  srcSet :: String
  | r
) 

type AvatarPropsO = AvatarPropsExt  (

) 


alt :: forall r. String -> IProp (alt :: String | r)
alt = mkProp "alt"

childrenClassName :: forall r. String -> IProp (childrenClassName :: String | r)
childrenClassName = mkProp "childrenClassName"

imgProps :: forall r. Untyped -> IProp (imgProps :: Untyped | r)
imgProps = mkProp "imgProps"

sizes :: forall r. String -> IProp (sizes :: String | r)
sizes = mkProp "sizes"

src :: forall r. String -> IProp (src :: String | r)
src = mkProp "src"

srcSet :: forall r. String -> IProp (srcSet :: String | r)
srcSet = mkProp "srcSet"

avatarU :: forall props. props -> Array ReactElement -> ReactElement
avatarU = createElement avatarClass

avatar' :: Array (IProp AvatarPropsO) -> Array ReactElement -> ReactElement
avatar' = mkPropRecord >>> avatarU

avatar_ :: Array ReactElement -> ReactElement
avatar_ = avatarU {}

