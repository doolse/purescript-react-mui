module MaterialUI.Jss where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classJss :: forall a. ReactClass a

type JssPropsO r = (
  composes :: OneOf (
    typed :: Array String, 
    typed :: String
  ), 
  key :: OneOf (
    typed :: Number, 
    typed :: String
  ), 
  "@global" :: Any {-- "\"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@types/jss/css\".CSSProperties"--}, 
  extend :: String
 | r)

type JssPropsM  = (
)

jss :: forall a. IsTSEq (Record a) (OptionRecord (JssPropsO JssPropsM) JssPropsM) => Record a -> Array ReactElement -> ReactElement
jss = unsafeCreateElement classJss

jss_ :: Array ReactElement -> ReactElement
jss_ = unsafeCreateElement classJss {}

jss' :: forall a. IsTSEq (Record a) (OptionRecord (JssPropsO JssPropsM) JssPropsM) => Record a -> ReactElement
jss' = unsafeCreateLeafElement classJss