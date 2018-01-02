module MaterialUI.TableCell where

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.PropTypes (StandardPropsExt, Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import tableCellClass :: forall props. ReactClass props


type TableCellProps r= Record  (

  | r
) 

type TableCellPropsExt r= StandardPropsExt  (
  component :: Untyped {-UNION["String",FQN:React.ComponentType]-},
  padding :: Untyped {-Identifier:Padding-},
  numeric :: Boolean
  | r
) 

type TableCellPropsO = TableCellPropsExt  (

) 


padding :: forall r. Untyped -> IProp (padding :: Untyped | r)
padding = mkProp "padding"

numeric :: forall r. Boolean -> IProp (numeric :: Boolean | r)
numeric = mkProp "numeric"

tableCellU :: forall props. props -> Array ReactElement -> ReactElement
tableCellU = createElement tableCellClass

tableCell' :: Array (IProp TableCellPropsO) -> Array ReactElement -> ReactElement
tableCell' = mkPropRecord >>> tableCellU

tableCell_ :: Array ReactElement -> ReactElement
tableCell_ = tableCellU {}

