module MaterialUI.TableRow where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import tableRowClass :: forall props. ReactClass props


type TableRowProps r= Record  (

  | r
) 

type TableRowPropsExt r= StandardPropsExt  (
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  hover :: Boolean,
  selected :: Boolean
  | r
) 

type TableRowPropsO = TableRowPropsExt  (

) 


hover :: forall r. Boolean -> IProp (hover :: Boolean | r)
hover = mkProp "hover"

selected :: forall r. Boolean -> IProp (selected :: Boolean | r)
selected = mkProp "selected"

tableRowU :: forall props. props -> Array ReactElement -> ReactElement
tableRowU = createElement tableRowClass

tableRow' :: Array (IProp TableRowPropsO) -> Array ReactElement -> ReactElement
tableRow' = mkPropRecord >>> tableRowU

tableRow_ :: Array ReactElement -> ReactElement
tableRow_ = tableRowU {}

