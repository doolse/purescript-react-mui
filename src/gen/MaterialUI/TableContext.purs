module MaterialUI.TableContext where
import Data.TSCompat (Any, OneOf, OptionRecord)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classTableContext :: forall a. ReactClass a

type TableContextPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  )
 | r)

type TableContextPropsM  = (
  padding :: Any {-- "\"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/Table/Table\".Padding"--}
)

tableContext :: forall a. IsTSEq (Record a) (OptionRecord (TableContextPropsO TableContextPropsM) TableContextPropsM) => Record a -> Array ReactElement -> ReactElement
tableContext = unsafeCreateElement classTableContext

tableContext_ :: Array ReactElement -> ReactElement
tableContext_ = unsafeCreateElement classTableContext {}

tableContext' :: forall a. IsTSEq (Record a) (OptionRecord (TableContextPropsO TableContextPropsM) TableContextPropsM) => Record a -> ReactElement
tableContext' = unsafeCreateLeafElement classTableContext