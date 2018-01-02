module MaterialUI.TableFooter where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import tableFooterClass :: forall props. ReactClass props


type TableFooterProps r= Record  (

  | r
) 

type TableFooterPropsExt r= StandardPropsExt  (
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-}
  | r
) 

type TableFooterPropsO = TableFooterPropsExt  (

) 



tableFooterU :: forall props. props -> Array ReactElement -> ReactElement
tableFooterU = createElement tableFooterClass

tableFooter' :: Array (IProp TableFooterPropsO) -> Array ReactElement -> ReactElement
tableFooter' = mkPropRecord >>> tableFooterU

tableFooter_ :: Array ReactElement -> ReactElement
tableFooter_ = tableFooterU {}

