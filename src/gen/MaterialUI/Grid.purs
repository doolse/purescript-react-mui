module MaterialUI.Grid where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)
import React.SyntheticEvent (SyntheticAnimationEvent, SyntheticClipboardEvent, SyntheticCompositionEvent, SyntheticEvent, SyntheticFocusEvent, SyntheticKeyboardEvent, SyntheticMouseEvent, SyntheticTouchEvent, SyntheticTransitionEvent, SyntheticUIEvent, SyntheticWheelEvent)

foreign import classGrid :: forall a. ReactClass a

type GridPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  alignContent :: OneOf (
    typed :: StringConst "space-around", 
    typed :: StringConst "space-between", 
    typed :: StringConst "stretch", 
    typed :: StringConst "center", 
    typed :: StringConst "flex-end", 
    typed :: StringConst "flex-start"
  ), 
  alignItems :: OneOf (
    typed :: StringConst "stretch", 
    typed :: StringConst "center", 
    typed :: StringConst "flex-end", 
    typed :: StringConst "flex-start", 
    typed :: StringConst "baseline"
  ), 
  component :: OneOf (
    typed :: String, 
    typed :: Any {-- React.ComponentClass<unknown, any>--}, 
    typed :: Any {-- (props: unknown | {children: boolean | undefined | null | string | number | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--}
  ), 
  container :: Boolean, 
  direction :: OneOf (
    typed :: StringConst "column", 
    typed :: StringConst "column-reverse", 
    typed :: StringConst "row", 
    typed :: StringConst "row-reverse"
  ), 
  item :: Boolean, 
  justify :: OneOf (
    typed :: StringConst "space-around", 
    typed :: StringConst "space-between", 
    typed :: StringConst "space-evenly", 
    typed :: StringConst "center", 
    typed :: StringConst "flex-end", 
    typed :: StringConst "flex-start"
  ), 
  spacing :: OneOf (
    typed :: Any {-- 0.0--}, 
    typed :: Any {-- 8.0--}, 
    typed :: Any {-- 16.0--}, 
    typed :: Any {-- 24.0--}, 
    typed :: Any {-- 32.0--}, 
    typed :: Any {-- 40.0--}
  ), 
  wrap :: OneOf (
    typed :: StringConst "nowrap", 
    typed :: StringConst "wrap", 
    typed :: StringConst "wrap-reverse"
  ), 
  zeroMinWidth :: Boolean, 
  color :: String, 
  style :: Any {-- React.CSSProperties<>--}, 
  defaultChecked :: Boolean, 
  defaultValue :: OneOf (
    typed :: String, 
    typed :: Array String
  ), 
  suppressContentEditableWarning :: Boolean, 
  suppressHydrationWarning :: Boolean, 
  accessKey :: String, 
  className :: String, 
  contentEditable :: Boolean, 
  contextMenu :: String, 
  dir :: String, 
  draggable :: Boolean, 
  id :: String, 
  lang :: String, 
  placeholder :: String, 
  slot :: String, 
  spellCheck :: Boolean, 
  tabIndex :: Number, 
  title :: String, 
  inputMode :: String, 
  is :: String, 
  radioGroup :: String, 
  role :: String, 
  about :: String, 
  datatype :: String, 
  inlist :: Any, 
  prefix :: String, 
  property :: String, 
  resource :: String, 
  typeof :: String, 
  vocab :: String, 
  autoCapitalize :: String, 
  autoCorrect :: String, 
  autoSave :: String, 
  itemProp :: String, 
  itemScope :: Boolean, 
  itemType :: String, 
  itemID :: String, 
  itemRef :: String, 
  results :: Number, 
  security :: String, 
  unselectable :: OneOf (
    typed :: StringConst "on", 
    typed :: StringConst "off"
  ), 
  dangerouslySetInnerHTML :: Record (
    "__html" :: String
  ), 
  onCopy :: EffectFn1 SyntheticClipboardEvent Unit, 
  onCopyCapture :: EffectFn1 SyntheticClipboardEvent Unit, 
  onCut :: EffectFn1 SyntheticClipboardEvent Unit, 
  onCutCapture :: EffectFn1 SyntheticClipboardEvent Unit, 
  onPaste :: EffectFn1 SyntheticClipboardEvent Unit, 
  onPasteCapture :: EffectFn1 SyntheticClipboardEvent Unit, 
  onCompositionEnd :: EffectFn1 SyntheticCompositionEvent Unit, 
  onCompositionEndCapture :: EffectFn1 SyntheticCompositionEvent Unit, 
  onCompositionStart :: EffectFn1 SyntheticCompositionEvent Unit, 
  onCompositionStartCapture :: EffectFn1 SyntheticCompositionEvent Unit, 
  onCompositionUpdate :: EffectFn1 SyntheticCompositionEvent Unit, 
  onCompositionUpdateCapture :: EffectFn1 SyntheticCompositionEvent Unit, 
  onFocus :: EffectFn1 SyntheticFocusEvent Unit, 
  onFocusCapture :: EffectFn1 SyntheticFocusEvent Unit, 
  onBlur :: EffectFn1 SyntheticFocusEvent Unit, 
  onBlurCapture :: EffectFn1 SyntheticFocusEvent Unit, 
  onChange :: EffectFn1 SyntheticEvent Unit, 
  onChangeCapture :: EffectFn1 SyntheticEvent Unit, 
  onInput :: EffectFn1 SyntheticEvent Unit, 
  onInputCapture :: EffectFn1 SyntheticEvent Unit, 
  onReset :: EffectFn1 SyntheticEvent Unit, 
  onResetCapture :: EffectFn1 SyntheticEvent Unit, 
  onSubmit :: EffectFn1 SyntheticEvent Unit, 
  onSubmitCapture :: EffectFn1 SyntheticEvent Unit, 
  onInvalid :: EffectFn1 SyntheticEvent Unit, 
  onInvalidCapture :: EffectFn1 SyntheticEvent Unit, 
  onLoad :: EffectFn1 SyntheticEvent Unit, 
  onLoadCapture :: EffectFn1 SyntheticEvent Unit, 
  onError :: EffectFn1 SyntheticEvent Unit, 
  onErrorCapture :: EffectFn1 SyntheticEvent Unit, 
  onKeyDown :: EffectFn1 SyntheticKeyboardEvent Unit, 
  onKeyDownCapture :: EffectFn1 SyntheticKeyboardEvent Unit, 
  onKeyPress :: EffectFn1 SyntheticKeyboardEvent Unit, 
  onKeyPressCapture :: EffectFn1 SyntheticKeyboardEvent Unit, 
  onKeyUp :: EffectFn1 SyntheticKeyboardEvent Unit, 
  onKeyUpCapture :: EffectFn1 SyntheticKeyboardEvent Unit, 
  onAbort :: EffectFn1 SyntheticEvent Unit, 
  onAbortCapture :: EffectFn1 SyntheticEvent Unit, 
  onCanPlay :: EffectFn1 SyntheticEvent Unit, 
  onCanPlayCapture :: EffectFn1 SyntheticEvent Unit, 
  onCanPlayThrough :: EffectFn1 SyntheticEvent Unit, 
  onCanPlayThroughCapture :: EffectFn1 SyntheticEvent Unit, 
  onDurationChange :: EffectFn1 SyntheticEvent Unit, 
  onDurationChangeCapture :: EffectFn1 SyntheticEvent Unit, 
  onEmptied :: EffectFn1 SyntheticEvent Unit, 
  onEmptiedCapture :: EffectFn1 SyntheticEvent Unit, 
  onEncrypted :: EffectFn1 SyntheticEvent Unit, 
  onEncryptedCapture :: EffectFn1 SyntheticEvent Unit, 
  onEnded :: EffectFn1 SyntheticEvent Unit, 
  onEndedCapture :: EffectFn1 SyntheticEvent Unit, 
  onLoadedData :: EffectFn1 SyntheticEvent Unit, 
  onLoadedDataCapture :: EffectFn1 SyntheticEvent Unit, 
  onLoadedMetadata :: EffectFn1 SyntheticEvent Unit, 
  onLoadedMetadataCapture :: EffectFn1 SyntheticEvent Unit, 
  onLoadStart :: EffectFn1 SyntheticEvent Unit, 
  onLoadStartCapture :: EffectFn1 SyntheticEvent Unit, 
  onPause :: EffectFn1 SyntheticEvent Unit, 
  onPauseCapture :: EffectFn1 SyntheticEvent Unit, 
  onPlay :: EffectFn1 SyntheticEvent Unit, 
  onPlayCapture :: EffectFn1 SyntheticEvent Unit, 
  onPlaying :: EffectFn1 SyntheticEvent Unit, 
  onPlayingCapture :: EffectFn1 SyntheticEvent Unit, 
  onProgress :: EffectFn1 SyntheticEvent Unit, 
  onProgressCapture :: EffectFn1 SyntheticEvent Unit, 
  onRateChange :: EffectFn1 SyntheticEvent Unit, 
  onRateChangeCapture :: EffectFn1 SyntheticEvent Unit, 
  onSeeked :: EffectFn1 SyntheticEvent Unit, 
  onSeekedCapture :: EffectFn1 SyntheticEvent Unit, 
  onSeeking :: EffectFn1 SyntheticEvent Unit, 
  onSeekingCapture :: EffectFn1 SyntheticEvent Unit, 
  onStalled :: EffectFn1 SyntheticEvent Unit, 
  onStalledCapture :: EffectFn1 SyntheticEvent Unit, 
  onSuspend :: EffectFn1 SyntheticEvent Unit, 
  onSuspendCapture :: EffectFn1 SyntheticEvent Unit, 
  onTimeUpdate :: EffectFn1 SyntheticEvent Unit, 
  onTimeUpdateCapture :: EffectFn1 SyntheticEvent Unit, 
  onVolumeChange :: EffectFn1 SyntheticEvent Unit, 
  onVolumeChangeCapture :: EffectFn1 SyntheticEvent Unit, 
  onWaiting :: EffectFn1 SyntheticEvent Unit, 
  onWaitingCapture :: EffectFn1 SyntheticEvent Unit, 
  onClick :: EffectFn1 SyntheticMouseEvent Unit, 
  onClickCapture :: EffectFn1 SyntheticMouseEvent Unit, 
  onContextMenu :: EffectFn1 SyntheticMouseEvent Unit, 
  onContextMenuCapture :: EffectFn1 SyntheticMouseEvent Unit, 
  onDoubleClick :: EffectFn1 SyntheticMouseEvent Unit, 
  onDoubleClickCapture :: EffectFn1 SyntheticMouseEvent Unit, 
  onDrag :: EffectFn1 SyntheticEvent Unit, 
  onDragCapture :: EffectFn1 SyntheticEvent Unit, 
  onDragEnd :: EffectFn1 SyntheticEvent Unit, 
  onDragEndCapture :: EffectFn1 SyntheticEvent Unit, 
  onDragEnter :: EffectFn1 SyntheticEvent Unit, 
  onDragEnterCapture :: EffectFn1 SyntheticEvent Unit, 
  onDragExit :: EffectFn1 SyntheticEvent Unit, 
  onDragExitCapture :: EffectFn1 SyntheticEvent Unit, 
  onDragLeave :: EffectFn1 SyntheticEvent Unit, 
  onDragLeaveCapture :: EffectFn1 SyntheticEvent Unit, 
  onDragOver :: EffectFn1 SyntheticEvent Unit, 
  onDragOverCapture :: EffectFn1 SyntheticEvent Unit, 
  onDragStart :: EffectFn1 SyntheticEvent Unit, 
  onDragStartCapture :: EffectFn1 SyntheticEvent Unit, 
  onDrop :: EffectFn1 SyntheticEvent Unit, 
  onDropCapture :: EffectFn1 SyntheticEvent Unit, 
  onMouseDown :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseDownCapture :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseEnter :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseLeave :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseMove :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseMoveCapture :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseOut :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseOutCapture :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseOver :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseOverCapture :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseUp :: EffectFn1 SyntheticMouseEvent Unit, 
  onMouseUpCapture :: EffectFn1 SyntheticMouseEvent Unit, 
  onSelect :: EffectFn1 SyntheticEvent Unit, 
  onSelectCapture :: EffectFn1 SyntheticEvent Unit, 
  onTouchCancel :: EffectFn1 SyntheticTouchEvent Unit, 
  onTouchCancelCapture :: EffectFn1 SyntheticTouchEvent Unit, 
  onTouchEnd :: EffectFn1 SyntheticTouchEvent Unit, 
  onTouchEndCapture :: EffectFn1 SyntheticTouchEvent Unit, 
  onTouchMove :: EffectFn1 SyntheticTouchEvent Unit, 
  onTouchMoveCapture :: EffectFn1 SyntheticTouchEvent Unit, 
  onTouchStart :: EffectFn1 SyntheticTouchEvent Unit, 
  onTouchStartCapture :: EffectFn1 SyntheticTouchEvent Unit, 
  onPointerDown :: EffectFn1 SyntheticEvent Unit, 
  onPointerDownCapture :: EffectFn1 SyntheticEvent Unit, 
  onPointerMove :: EffectFn1 SyntheticEvent Unit, 
  onPointerMoveCapture :: EffectFn1 SyntheticEvent Unit, 
  onPointerUp :: EffectFn1 SyntheticEvent Unit, 
  onPointerUpCapture :: EffectFn1 SyntheticEvent Unit, 
  onPointerCancel :: EffectFn1 SyntheticEvent Unit, 
  onPointerCancelCapture :: EffectFn1 SyntheticEvent Unit, 
  onPointerEnter :: EffectFn1 SyntheticEvent Unit, 
  onPointerEnterCapture :: EffectFn1 SyntheticEvent Unit, 
  onPointerLeave :: EffectFn1 SyntheticEvent Unit, 
  onPointerLeaveCapture :: EffectFn1 SyntheticEvent Unit, 
  onPointerOver :: EffectFn1 SyntheticEvent Unit, 
  onPointerOverCapture :: EffectFn1 SyntheticEvent Unit, 
  onPointerOut :: EffectFn1 SyntheticEvent Unit, 
  onPointerOutCapture :: EffectFn1 SyntheticEvent Unit, 
  onGotPointerCapture :: EffectFn1 SyntheticEvent Unit, 
  onGotPointerCaptureCapture :: EffectFn1 SyntheticEvent Unit, 
  onLostPointerCapture :: EffectFn1 SyntheticEvent Unit, 
  onLostPointerCaptureCapture :: EffectFn1 SyntheticEvent Unit, 
  onScroll :: EffectFn1 SyntheticUIEvent Unit, 
  onScrollCapture :: EffectFn1 SyntheticUIEvent Unit, 
  onWheel :: EffectFn1 SyntheticWheelEvent Unit, 
  onWheelCapture :: EffectFn1 SyntheticWheelEvent Unit, 
  onAnimationStart :: EffectFn1 SyntheticAnimationEvent Unit, 
  onAnimationStartCapture :: EffectFn1 SyntheticAnimationEvent Unit, 
  onAnimationEnd :: EffectFn1 SyntheticAnimationEvent Unit, 
  onAnimationEndCapture :: EffectFn1 SyntheticAnimationEvent Unit, 
  onAnimationIteration :: EffectFn1 SyntheticAnimationEvent Unit, 
  onAnimationIterationCapture :: EffectFn1 SyntheticAnimationEvent Unit, 
  onTransitionEnd :: EffectFn1 SyntheticTransitionEvent Unit, 
  onTransitionEndCapture :: EffectFn1 SyntheticTransitionEvent Unit, 
  xs :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "auto", 
    typed :: Any {-- 1.0--}, 
    typed :: Any {-- 2.0--}, 
    typed :: Any {-- 3.0--}, 
    typed :: Any {-- 4.0--}, 
    typed :: Any {-- 5.0--}, 
    typed :: Any {-- 6.0--}, 
    typed :: Any {-- 7.0--}, 
    typed :: Any {-- 8.0--}, 
    typed :: Any {-- 9.0--}, 
    typed :: Any {-- 10.0--}, 
    typed :: Any {-- 11.0--}, 
    typed :: Any {-- 12.0--}
  ), 
  sm :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "auto", 
    typed :: Any {-- 1.0--}, 
    typed :: Any {-- 2.0--}, 
    typed :: Any {-- 3.0--}, 
    typed :: Any {-- 4.0--}, 
    typed :: Any {-- 5.0--}, 
    typed :: Any {-- 6.0--}, 
    typed :: Any {-- 7.0--}, 
    typed :: Any {-- 8.0--}, 
    typed :: Any {-- 9.0--}, 
    typed :: Any {-- 10.0--}, 
    typed :: Any {-- 11.0--}, 
    typed :: Any {-- 12.0--}
  ), 
  md :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "auto", 
    typed :: Any {-- 1.0--}, 
    typed :: Any {-- 2.0--}, 
    typed :: Any {-- 3.0--}, 
    typed :: Any {-- 4.0--}, 
    typed :: Any {-- 5.0--}, 
    typed :: Any {-- 6.0--}, 
    typed :: Any {-- 7.0--}, 
    typed :: Any {-- 8.0--}, 
    typed :: Any {-- 9.0--}, 
    typed :: Any {-- 10.0--}, 
    typed :: Any {-- 11.0--}, 
    typed :: Any {-- 12.0--}
  ), 
  lg :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "auto", 
    typed :: Any {-- 1.0--}, 
    typed :: Any {-- 2.0--}, 
    typed :: Any {-- 3.0--}, 
    typed :: Any {-- 4.0--}, 
    typed :: Any {-- 5.0--}, 
    typed :: Any {-- 6.0--}, 
    typed :: Any {-- 7.0--}, 
    typed :: Any {-- 8.0--}, 
    typed :: Any {-- 9.0--}, 
    typed :: Any {-- 10.0--}, 
    typed :: Any {-- 11.0--}, 
    typed :: Any {-- 12.0--}
  ), 
  xl :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "auto", 
    typed :: Any {-- 1.0--}, 
    typed :: Any {-- 2.0--}, 
    typed :: Any {-- 3.0--}, 
    typed :: Any {-- 4.0--}, 
    typed :: Any {-- 5.0--}, 
    typed :: Any {-- 6.0--}, 
    typed :: Any {-- 7.0--}, 
    typed :: Any {-- 8.0--}, 
    typed :: Any {-- 9.0--}, 
    typed :: Any {-- 10.0--}, 
    typed :: Any {-- 11.0--}, 
    typed :: Any {-- 12.0--}
  ), 
  classes :: Any {-- unknown--}, 
  innerRef :: OneOf (
    typed :: String, 
    typed :: Any -> Any, 
    typed :: Any {-- React.RefObject<any>--}
  )
 | r)

type GridPropsM  = (
)

grid :: forall a. IsTSEq (Record a) (OptionRecord (GridPropsO GridPropsM) GridPropsM) => Record a -> Array ReactElement -> ReactElement
grid = unsafeCreateElement classGrid

grid_ :: Array ReactElement -> ReactElement
grid_ = unsafeCreateElement classGrid {}

grid' :: forall a. IsTSEq (Record a) (OptionRecord (GridPropsO GridPropsM) GridPropsM) => Record a -> ReactElement
grid' = unsafeCreateLeafElement classGrid