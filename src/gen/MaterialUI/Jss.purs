module MaterialUI.Jss where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import React (unsafeCreateElement, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classJss :: forall a. ReactClass a

type JssPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  "@global" :: Any {--"\"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@types/jss/css\".CSSProperties"--},
  extend :: String,
  composes :: OneOf ((
    typed :: String,
    typed :: Array String)) | r )

type JssPropsM  = (
)

jss :: forall a. IsTSEq (Record a) (OptionRecord (JssPropsO JssPropsM) JssPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
jss = unsafeCreateElement classJss

jss_ :: Function (Array ReactElement) ReactElement
jss_ = unsafeCreateElement classJss {}

jss' :: forall a. IsTSEq (Record a) (OptionRecord (JssPropsO JssPropsM) JssPropsM) => Function (Record a) ReactElement
jss' = unsafeCreateLeafElement classJss