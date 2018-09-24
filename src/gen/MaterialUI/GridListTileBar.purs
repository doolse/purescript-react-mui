module MaterialUI.GridListTileBar where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement, ReactNode)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classGridListTileBar :: forall a.ReactClass a

type GridListTileBarPropsO r = (style :: Any{-- React.CSSProperties<>--},
  key :: OneOf ((typed :: Number,
  typed :: String)),
  actionIcon :: ReactNode,
  actionPosition :: OneOf ((typed :: StringConst "right",
  typed :: StringConst "left")),
  subtitle :: ReactNode,
  title :: ReactNode,
  titlePosition :: OneOf ((typed :: StringConst "top",
  typed :: StringConst "bottom")),
  classes :: Any{-- unknown--},
  innerRef :: OneOf ((typed :: Any{-- React.RefObject<any>--},
  typed :: String,
  typed :: Any -> Any)),
  className :: String | r)

type GridListTileBarPropsM  = ()

gridListTileBar :: forall a.IsTSEq (Record a) (OptionRecord (GridListTileBarPropsO GridListTileBarPropsM) GridListTileBarPropsM)  => Record a -> Array ReactElement -> ReactElement
gridListTileBar = unsafeCreateElement classGridListTileBar

gridListTileBar_ :: Array ReactElement -> ReactElement
gridListTileBar_ = unsafeCreateElement classGridListTileBar {}

gridListTileBar' :: forall a.IsTSEq (Record a) (OptionRecord (GridListTileBarPropsO GridListTileBarPropsM) GridListTileBarPropsM)  => Record a -> ReactElement
gridListTileBar' = unsafeCreateLeafElement classGridListTileBar