module MaterialUI.Table where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import tableClass :: forall props. ReactClass props


type TableProps r= Record  (

  | r
) 

type TablePropsExt r= StandardPropsExt  (
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-}
  | r
) 

type TablePropsO = TablePropsExt  (

) 



tableU :: forall props. props -> Array ReactElement -> ReactElement
tableU = createElement tableClass

table' :: Array (IProp TablePropsO) -> Array ReactElement -> ReactElement
table' = mkPropRecord >>> tableU

table_ :: Array ReactElement -> ReactElement
table_ = tableU {}

