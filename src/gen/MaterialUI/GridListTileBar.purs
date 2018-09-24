module MaterialUI.GridListTileBar where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (ReactNode)
import React (unsafeCreateElement, unsafeCreateLeafElement, ReactClass, ReactElement)

foreign import classGridListTileBar :: forall a. ReactClass a

type GridListTileBarPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  actionIcon :: ReactNode,
  actionPosition :: OneOf ((
    typed :: StringConst ("left"),
    typed :: StringConst ("right"))),
  subtitle :: ReactNode,
  title :: ReactNode,
  titlePosition :: OneOf ((
    typed :: StringConst ("bottom"),
    typed :: StringConst ("top"))),
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function Any Any,
    typed :: Any {--React.RefObject<any>--})),
  className :: String,
  style :: Any {--React.CSSProperties<>--} | r )

type GridListTileBarPropsM  = (
)

gridListTileBar :: forall a. IsTSEq (Record a) (OptionRecord (GridListTileBarPropsO GridListTileBarPropsM) GridListTileBarPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
gridListTileBar = unsafeCreateElement classGridListTileBar

gridListTileBar_ :: Function (Array ReactElement) ReactElement
gridListTileBar_ = unsafeCreateElement classGridListTileBar {}

gridListTileBar' :: forall a. IsTSEq (Record a) (OptionRecord (GridListTileBarPropsO GridListTileBarPropsM) GridListTileBarPropsM) => Function (Record a) ReactElement
gridListTileBar' = unsafeCreateLeafElement classGridListTileBar