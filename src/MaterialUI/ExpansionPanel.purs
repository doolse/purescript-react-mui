module MaterialUI.ExpansionPanel where

-- This file is autogenerated from the typescript binding

import Prelude
import React (ReactClass, ReactElement, createElement)
import MaterialUI.Paper (PaperPropsExt)
import MaterialUI.PropTypes (Untyped)
import MaterialUI.Properties (mkProp, IProp, mkPropRecord)

foreign import expansionPanelClass :: forall props. ReactClass props


type ExpansionPanelPropsExt r = PaperPropsExt (
  "CollapseProps" :: Untyped {-React.ComponentType-},
  defaultExpanded :: Boolean,
  disabled :: Boolean,
  expanded :: Boolean,
  onChange :: Untyped {-unknownType:FunctionType-}
  | r
) 

type ExpansionPanelProps = ExpansionPanelPropsExt (

) 


collapseProps :: forall r. Untyped -> IProp ("CollapseProps" :: Untyped | r)
collapseProps = mkProp "CollapseProps"

defaultExpanded :: forall r. Boolean -> IProp (defaultExpanded :: Boolean | r)
defaultExpanded = mkProp "defaultExpanded"

disabled :: forall r. Boolean -> IProp (disabled :: Boolean | r)
disabled = mkProp "disabled"

expanded :: forall r. Boolean -> IProp (expanded :: Boolean | r)
expanded = mkProp "expanded"

onChange :: forall r. Untyped -> IProp (onChange :: Untyped | r)
onChange = mkProp "onChange"

expansionPanelU :: forall props. props -> Array ReactElement -> ReactElement
expansionPanelU = createElement expansionPanelClass

expansionPanel :: Array (IProp ExpansionPanelProps) -> Array ReactElement -> ReactElement
expansionPanel = mkPropRecord >>> expansionPanelU

expansionPanel_ :: Array ReactElement -> ReactElement
expansionPanel_ = expansionPanelU {}

