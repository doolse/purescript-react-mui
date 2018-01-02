module MaterialUI.TableBody where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import tableBodyClass :: forall props. ReactClass props


type TableBodyProps r= Record  (

  | r
) 

type TableBodyPropsExt r= StandardPropsExt  (
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-}
  | r
) 

type TableBodyPropsO = TableBodyPropsExt  (

) 



tableBodyU :: forall props. props -> Array ReactElement -> ReactElement
tableBodyU = createElement tableBodyClass

tableBody' :: Array (IProp TableBodyPropsO) -> Array ReactElement -> ReactElement
tableBody' = mkPropRecord >>> tableBodyU

tableBody_ :: Array ReactElement -> ReactElement
tableBody_ = tableBodyU {}

