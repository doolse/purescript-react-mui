module MaterialUI.Avatar where

import React (ReactClass, ReactElement, createElement)
import MaterialUI.Optional (class Optional)


foreign import avatarClass :: forall props. ReactClass props

type AvatarProps r = {


  | r
}

type AvatarPropsO = (
  alt :: String,
  childrenClassName :: String,
  sizes :: String,
  src :: String,
  srcSet :: String
--  component :: UNION["String",FQN:React.ComponentType],
--  imgProps :: Identifier:Object
)

avatarU :: forall props. props -> Array ReactElement -> ReactElement
avatarU = createElement avatarClass

avatar' :: forall o. Optional o AvatarPropsO => AvatarProps o -> Array ReactElement -> ReactElement
avatar' = avatarU

