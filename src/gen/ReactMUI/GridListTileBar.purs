module ReactMUI.GridListTileBar where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import Data.TSCompat.React (ReactNode)
import React (ReactElement)

type GridListTileBarPropsO r = (
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
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})),
  className :: String,
  style :: Any {--React.CSSProperties<>--} | r )

type GridListTileBarPropsM  = (
)

foreign import gridListTileBar :: forall a. IsTSRecord a (GridListTileBarPropsO GridListTileBarPropsM) GridListTileBarPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)

gridListTileBar_ :: Function (Array ReactElement) ReactElement
gridListTileBar_ = gridListTileBar {}