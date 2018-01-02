module MaterialUI.TableHead where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import tableHeadClass :: forall props. ReactClass props


type TableHeadProps r= Record  (

  | r
) 

type TableHeadPropsExt r= StandardPropsExt  (
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-}
  | r
) 

type TableHeadPropsO = TableHeadPropsExt  (

) 



tableHeadU :: forall props. props -> Array ReactElement -> ReactElement
tableHeadU = createElement tableHeadClass

tableHead' :: Array (IProp TableHeadPropsO) -> Array ReactElement -> ReactElement
tableHead' = mkPropRecord >>> tableHeadU

tableHead_ :: Array ReactElement -> ReactElement
tableHead_ = tableHeadU {}

