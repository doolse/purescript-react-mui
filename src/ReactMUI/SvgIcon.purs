module ReactMUI.SvgIcon where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (ReactElement)

type SvgIconPropsO r = (
  color :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("default"),
    typed :: StringConst ("disabled"),
    typed :: StringConst ("primary"),
    typed :: StringConst ("secondary"),
    typed :: StringConst ("error"),
    typed :: StringConst ("action"))),
  component :: OneOf ((
    typed :: String,
    typed :: Any {--React.ComponentClass<"/home/jolz/git/material-ui/packages/material-ui/src/SvgIcon/SvgIcon".SvgIconProps<>, any>--},
    typed :: Any {--(props: "/home/jolz/git/material-ui/packages/material-ui/src/SvgIcon/SvgIcon".SvgIconProps<> | {children: undefined | null | string | number | false | true | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--})),
  fontSize :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("default"))),
  nativeColor :: String,
  titleAccess :: String,
  viewBox :: String,
  string :: OneOf ((
    typed :: String,
    typed :: Number)),
  clipPath :: String,
  cursor :: OneOf ((
    typed :: String,
    typed :: Number)),
  direction :: OneOf ((
    typed :: String,
    typed :: Number)),
  display :: OneOf ((
    typed :: String,
    typed :: Number)),
  filter :: String,
  fontFamily :: String,
  fontSizeAdjust :: OneOf ((
    typed :: String,
    typed :: Number)),
  fontStretch :: OneOf ((
    typed :: String,
    typed :: Number)),
  fontStyle :: OneOf ((
    typed :: String,
    typed :: Number)),
  fontVariant :: OneOf ((
    typed :: String,
    typed :: Number)),
  fontWeight :: OneOf ((
    typed :: String,
    typed :: Number)),
  height :: OneOf ((
    typed :: String,
    typed :: Number)),
  imageRendering :: OneOf ((
    typed :: String,
    typed :: Number)),
  letterSpacing :: OneOf ((
    typed :: String,
    typed :: Number)),
  opacity :: OneOf ((
    typed :: String,
    typed :: Number)),
  order :: OneOf ((
    typed :: String,
    typed :: Number)),
  overflow :: OneOf ((
    typed :: String,
    typed :: Number)),
  paintOrder :: OneOf ((
    typed :: String,
    typed :: Number)),
  pointerEvents :: OneOf ((
    typed :: String,
    typed :: Number)),
  rotate :: OneOf ((
    typed :: String,
    typed :: Number)),
  scale :: OneOf ((
    typed :: String,
    typed :: Number)),
  textRendering :: OneOf ((
    typed :: String,
    typed :: Number)),
  transform :: String,
  unicodeBidi :: OneOf ((
    typed :: String,
    typed :: Number)),
  visibility :: OneOf ((
    typed :: String,
    typed :: Number)),
  width :: OneOf ((
    typed :: String,
    typed :: Number)),
  wordSpacing :: OneOf ((
    typed :: String,
    typed :: Number)),
  writingMode :: OneOf ((
    typed :: String,
    typed :: Number)),
  mask :: String,
  offset :: OneOf ((
    typed :: String,
    typed :: Number)),
  textDecoration :: OneOf ((
    typed :: String,
    typed :: Number)),
  azimuth :: OneOf ((
    typed :: String,
    typed :: Number)),
  clip :: OneOf ((
    typed :: String,
    typed :: Number)),
  alignmentBaseline :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("baseline"),
    typed :: StringConst ("auto"),
    typed :: StringConst ("alphabetic"),
    typed :: StringConst ("hanging"),
    typed :: StringConst ("ideographic"),
    typed :: StringConst ("middle"),
    typed :: StringConst ("after-edge"),
    typed :: StringConst ("before-edge"),
    typed :: StringConst ("central"),
    typed :: StringConst ("mathematical"),
    typed :: StringConst ("text-after-edge"),
    typed :: StringConst ("text-before-edge"))),
  baselineShift :: OneOf ((
    typed :: String,
    typed :: Number)),
  clipRule :: OneOf ((
    typed :: String,
    typed :: Number)),
  colorInterpolation :: OneOf ((
    typed :: String,
    typed :: Number)),
  colorRendering :: OneOf ((
    typed :: String,
    typed :: Number)),
  dominantBaseline :: OneOf ((
    typed :: String,
    typed :: Number)),
  fill :: String,
  fillOpacity :: OneOf ((
    typed :: String,
    typed :: Number)),
  fillRule :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("evenodd"),
    typed :: StringConst ("nonzero"))),
  floodColor :: OneOf ((
    typed :: String,
    typed :: Number)),
  floodOpacity :: OneOf ((
    typed :: String,
    typed :: Number)),
  glyphOrientationVertical :: OneOf ((
    typed :: String,
    typed :: Number)),
  lightingColor :: OneOf ((
    typed :: String,
    typed :: Number)),
  markerEnd :: String,
  markerMid :: String,
  markerStart :: String,
  shapeRendering :: OneOf ((
    typed :: String,
    typed :: Number)),
  stopColor :: String,
  stopOpacity :: OneOf ((
    typed :: String,
    typed :: Number)),
  stroke :: String,
  strokeDasharray :: OneOf ((
    typed :: String,
    typed :: Number)),
  strokeDashoffset :: OneOf ((
    typed :: String,
    typed :: Number)),
  strokeLinecap :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("round"),
    typed :: StringConst ("butt"),
    typed :: StringConst ("square"))),
  strokeLinejoin :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("round"),
    typed :: StringConst ("bevel"),
    typed :: StringConst ("miter"))),
  strokeMiterlimit :: OneOf ((
    typed :: String,
    typed :: Number)),
  strokeOpacity :: OneOf ((
    typed :: String,
    typed :: Number)),
  strokeWidth :: OneOf ((
    typed :: String,
    typed :: Number)),
  textAnchor :: String,
  vectorEffect :: OneOf ((
    typed :: String,
    typed :: Number)),
  end :: OneOf ((
    typed :: String,
    typed :: Number)),
  local :: OneOf ((
    typed :: String,
    typed :: Number)),
  style :: Any {--React.CSSProperties<>--},
  alphabetic :: OneOf ((
    typed :: String,
    typed :: Number)),
  hanging :: OneOf ((
    typed :: String,
    typed :: Number)),
  ideographic :: OneOf ((
    typed :: String,
    typed :: Number)),
  mathematical :: OneOf ((
    typed :: String,
    typed :: Number)),
  className :: String,
  id :: String,
  lang :: String,
  tabIndex :: Number,
  role :: String,
  dangerouslySetInnerHTML :: Any {--{__html: string}--},
  onCopy :: EffectFn1 (Any {--React.ClipboardEvent<interface SVGSVGElement>--}) Unit,
  onCopyCapture :: EffectFn1 (Any {--React.ClipboardEvent<interface SVGSVGElement>--}) Unit,
  onCut :: EffectFn1 (Any {--React.ClipboardEvent<interface SVGSVGElement>--}) Unit,
  onCutCapture :: EffectFn1 (Any {--React.ClipboardEvent<interface SVGSVGElement>--}) Unit,
  onPaste :: EffectFn1 (Any {--React.ClipboardEvent<interface SVGSVGElement>--}) Unit,
  onPasteCapture :: EffectFn1 (Any {--React.ClipboardEvent<interface SVGSVGElement>--}) Unit,
  onCompositionEnd :: EffectFn1 (Any {--React.CompositionEvent<interface SVGSVGElement>--}) Unit,
  onCompositionEndCapture :: EffectFn1 (Any {--React.CompositionEvent<interface SVGSVGElement>--}) Unit,
  onCompositionStart :: EffectFn1 (Any {--React.CompositionEvent<interface SVGSVGElement>--}) Unit,
  onCompositionStartCapture :: EffectFn1 (Any {--React.CompositionEvent<interface SVGSVGElement>--}) Unit,
  onCompositionUpdate :: EffectFn1 (Any {--React.CompositionEvent<interface SVGSVGElement>--}) Unit,
  onCompositionUpdateCapture :: EffectFn1 (Any {--React.CompositionEvent<interface SVGSVGElement>--}) Unit,
  onFocus :: EffectFn1 (Any {--React.FocusEvent<interface SVGSVGElement>--}) Unit,
  onFocusCapture :: EffectFn1 (Any {--React.FocusEvent<interface SVGSVGElement>--}) Unit,
  onBlur :: EffectFn1 (Any {--React.FocusEvent<interface SVGSVGElement>--}) Unit,
  onBlurCapture :: EffectFn1 (Any {--React.FocusEvent<interface SVGSVGElement>--}) Unit,
  onChange :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onChangeCapture :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onInput :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onInputCapture :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onReset :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onResetCapture :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onSubmit :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onSubmitCapture :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onInvalid :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onInvalidCapture :: EffectFn1 (Any {--React.FormEvent<interface SVGSVGElement>--}) Unit,
  onLoad :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onLoadCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onError :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onErrorCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onKeyDown :: EffectFn1 (Any {--React.KeyboardEvent<interface SVGSVGElement>--}) Unit,
  onKeyDownCapture :: EffectFn1 (Any {--React.KeyboardEvent<interface SVGSVGElement>--}) Unit,
  onKeyPress :: EffectFn1 (Any {--React.KeyboardEvent<interface SVGSVGElement>--}) Unit,
  onKeyPressCapture :: EffectFn1 (Any {--React.KeyboardEvent<interface SVGSVGElement>--}) Unit,
  onKeyUp :: EffectFn1 (Any {--React.KeyboardEvent<interface SVGSVGElement>--}) Unit,
  onKeyUpCapture :: EffectFn1 (Any {--React.KeyboardEvent<interface SVGSVGElement>--}) Unit,
  onAbort :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onAbortCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onCanPlay :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onCanPlayCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onCanPlayThrough :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onCanPlayThroughCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onDurationChange :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onDurationChangeCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onEmptied :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onEmptiedCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onEncrypted :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onEncryptedCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onEnded :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onEndedCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onLoadedData :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onLoadedDataCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onLoadedMetadata :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onLoadedMetadataCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onLoadStart :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onLoadStartCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onPause :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onPauseCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onPlay :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onPlayCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onPlaying :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onPlayingCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onProgress :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onProgressCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onRateChange :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onRateChangeCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onSeeked :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onSeekedCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onSeeking :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onSeekingCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onStalled :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onStalledCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onSuspend :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onSuspendCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onTimeUpdate :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onTimeUpdateCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onVolumeChange :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onVolumeChangeCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onWaiting :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onWaitingCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onClick :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onClickCapture :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onContextMenu :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onContextMenuCapture :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onDoubleClick :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onDoubleClickCapture :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onDrag :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragCapture :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragEnd :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragEndCapture :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragEnter :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragEnterCapture :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragExit :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragExitCapture :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragLeave :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragLeaveCapture :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragOver :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragOverCapture :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragStart :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDragStartCapture :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDrop :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onDropCapture :: EffectFn1 (Any {--React.DragEvent<interface SVGSVGElement>--}) Unit,
  onMouseDown :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseDownCapture :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseEnter :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseLeave :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseMove :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseMoveCapture :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseOut :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseOutCapture :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseOver :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseOverCapture :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseUp :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onMouseUpCapture :: EffectFn1 (Any {--React.MouseEvent<interface SVGSVGElement>--}) Unit,
  onSelect :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onSelectCapture :: EffectFn1 (Any {--React.SyntheticEvent<interface SVGSVGElement>--}) Unit,
  onTouchCancel :: EffectFn1 (Any {--React.TouchEvent<interface SVGSVGElement>--}) Unit,
  onTouchCancelCapture :: EffectFn1 (Any {--React.TouchEvent<interface SVGSVGElement>--}) Unit,
  onTouchEnd :: EffectFn1 (Any {--React.TouchEvent<interface SVGSVGElement>--}) Unit,
  onTouchEndCapture :: EffectFn1 (Any {--React.TouchEvent<interface SVGSVGElement>--}) Unit,
  onTouchMove :: EffectFn1 (Any {--React.TouchEvent<interface SVGSVGElement>--}) Unit,
  onTouchMoveCapture :: EffectFn1 (Any {--React.TouchEvent<interface SVGSVGElement>--}) Unit,
  onTouchStart :: EffectFn1 (Any {--React.TouchEvent<interface SVGSVGElement>--}) Unit,
  onTouchStartCapture :: EffectFn1 (Any {--React.TouchEvent<interface SVGSVGElement>--}) Unit,
  onPointerDown :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerDownCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerMove :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerMoveCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerUp :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerUpCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerCancel :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerCancelCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerEnter :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerEnterCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerLeave :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerLeaveCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerOver :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerOverCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerOut :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onPointerOutCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onGotPointerCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onGotPointerCaptureCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onLostPointerCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onLostPointerCaptureCapture :: EffectFn1 (Any {--React.PointerEvent<interface SVGSVGElement>--}) Unit,
  onScroll :: EffectFn1 (Any {--React.UIEvent<interface SVGSVGElement>--}) Unit,
  onScrollCapture :: EffectFn1 (Any {--React.UIEvent<interface SVGSVGElement>--}) Unit,
  onWheel :: EffectFn1 (Any {--React.WheelEvent<interface SVGSVGElement>--}) Unit,
  onWheelCapture :: EffectFn1 (Any {--React.WheelEvent<interface SVGSVGElement>--}) Unit,
  onAnimationStart :: EffectFn1 (Any {--React.AnimationEvent<interface SVGSVGElement>--}) Unit,
  onAnimationStartCapture :: EffectFn1 (Any {--React.AnimationEvent<interface SVGSVGElement>--}) Unit,
  onAnimationEnd :: EffectFn1 (Any {--React.AnimationEvent<interface SVGSVGElement>--}) Unit,
  onAnimationEndCapture :: EffectFn1 (Any {--React.AnimationEvent<interface SVGSVGElement>--}) Unit,
  onAnimationIteration :: EffectFn1 (Any {--React.AnimationEvent<interface SVGSVGElement>--}) Unit,
  onAnimationIterationCapture :: EffectFn1 (Any {--React.AnimationEvent<interface SVGSVGElement>--}) Unit,
  onTransitionEnd :: EffectFn1 (Any {--React.TransitionEvent<interface SVGSVGElement>--}) Unit,
  onTransitionEndCapture :: EffectFn1 (Any {--React.TransitionEvent<interface SVGSVGElement>--}) Unit,
  elevation :: OneOf ((
    typed :: String,
    typed :: Number)),
  in :: String,
  href :: String,
  media :: String,
  target :: String,
  type :: String,
  name :: String,
  ref :: OneOf ((
    typed :: String,
    typed :: Function (OneOf ((
      typed :: Any {--null--},
      typed :: Any {--interface SVGSVGElement--}))) (Any {--any--}),
    typed :: Any {--React.RefObject<interface SVGSVGElement>--})),
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
  spacing :: OneOf ((
    typed :: String,
    typed :: Number)),
  max :: OneOf ((
    typed :: String,
    typed :: Number)),
  method :: String,
  min :: OneOf ((
    typed :: String,
    typed :: Number)),
  accentHeight :: OneOf ((
    typed :: String,
    typed :: Number)),
  accumulate :: OneOf ((
    typed :: StringConst ("none"),
    typed :: StringConst ("sum"))),
  additive :: OneOf ((
    typed :: StringConst ("sum"),
    typed :: StringConst ("replace"))),
  allowReorder :: OneOf ((
    typed :: StringConst ("no"),
    typed :: StringConst ("yes"))),
  amplitude :: OneOf ((
    typed :: String,
    typed :: Number)),
  arabicForm :: OneOf ((
    typed :: StringConst ("initial"),
    typed :: StringConst ("medial"),
    typed :: StringConst ("terminal"),
    typed :: StringConst ("isolated"))),
  ascent :: OneOf ((
    typed :: String,
    typed :: Number)),
  attributeName :: String,
  attributeType :: String,
  autoReverse :: OneOf ((
    typed :: String,
    typed :: Number)),
  baseFrequency :: OneOf ((
    typed :: String,
    typed :: Number)),
  baseProfile :: OneOf ((
    typed :: String,
    typed :: Number)),
  bbox :: OneOf ((
    typed :: String,
    typed :: Number)),
  begin :: OneOf ((
    typed :: String,
    typed :: Number)),
  bias :: OneOf ((
    typed :: String,
    typed :: Number)),
  by :: OneOf ((
    typed :: String,
    typed :: Number)),
  calcMode :: OneOf ((
    typed :: String,
    typed :: Number)),
  capHeight :: OneOf ((
    typed :: String,
    typed :: Number)),
  clipPathUnits :: OneOf ((
    typed :: String,
    typed :: Number)),
  colorInterpolationFilters :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("auto"),
    typed :: StringConst ("linearRGB"),
    typed :: StringConst ("sRGB"))),
  colorProfile :: OneOf ((
    typed :: String,
    typed :: Number)),
  contentScriptType :: OneOf ((
    typed :: String,
    typed :: Number)),
  contentStyleType :: OneOf ((
    typed :: String,
    typed :: Number)),
  cx :: OneOf ((
    typed :: String,
    typed :: Number)),
  cy :: OneOf ((
    typed :: String,
    typed :: Number)),
  d :: String,
  decelerate :: OneOf ((
    typed :: String,
    typed :: Number)),
  descent :: OneOf ((
    typed :: String,
    typed :: Number)),
  diffuseConstant :: OneOf ((
    typed :: String,
    typed :: Number)),
  divisor :: OneOf ((
    typed :: String,
    typed :: Number)),
  dur :: OneOf ((
    typed :: String,
    typed :: Number)),
  dx :: OneOf ((
    typed :: String,
    typed :: Number)),
  dy :: OneOf ((
    typed :: String,
    typed :: Number)),
  edgeMode :: OneOf ((
    typed :: String,
    typed :: Number)),
  enableBackground :: OneOf ((
    typed :: String,
    typed :: Number)),
  exponent :: OneOf ((
    typed :: String,
    typed :: Number)),
  externalResourcesRequired :: OneOf ((
    typed :: String,
    typed :: Number)),
  filterRes :: OneOf ((
    typed :: String,
    typed :: Number)),
  filterUnits :: OneOf ((
    typed :: String,
    typed :: Number)),
  focusable :: OneOf ((
    typed :: String,
    typed :: Number)),
  format :: OneOf ((
    typed :: String,
    typed :: Number)),
  from :: OneOf ((
    typed :: String,
    typed :: Number)),
  fx :: OneOf ((
    typed :: String,
    typed :: Number)),
  fy :: OneOf ((
    typed :: String,
    typed :: Number)),
  g1 :: OneOf ((
    typed :: String,
    typed :: Number)),
  g2 :: OneOf ((
    typed :: String,
    typed :: Number)),
  glyphName :: OneOf ((
    typed :: String,
    typed :: Number)),
  glyphOrientationHorizontal :: OneOf ((
    typed :: String,
    typed :: Number)),
  glyphRef :: OneOf ((
    typed :: String,
    typed :: Number)),
  gradientTransform :: String,
  gradientUnits :: String,
  horizAdvX :: OneOf ((
    typed :: String,
    typed :: Number)),
  horizOriginX :: OneOf ((
    typed :: String,
    typed :: Number)),
  in2 :: OneOf ((
    typed :: String,
    typed :: Number)),
  intercept :: OneOf ((
    typed :: String,
    typed :: Number)),
  k1 :: OneOf ((
    typed :: String,
    typed :: Number)),
  k2 :: OneOf ((
    typed :: String,
    typed :: Number)),
  k3 :: OneOf ((
    typed :: String,
    typed :: Number)),
  k4 :: OneOf ((
    typed :: String,
    typed :: Number)),
  k :: OneOf ((
    typed :: String,
    typed :: Number)),
  kernelMatrix :: OneOf ((
    typed :: String,
    typed :: Number)),
  kernelUnitLength :: OneOf ((
    typed :: String,
    typed :: Number)),
  kerning :: OneOf ((
    typed :: String,
    typed :: Number)),
  keyPoints :: OneOf ((
    typed :: String,
    typed :: Number)),
  keySplines :: OneOf ((
    typed :: String,
    typed :: Number)),
  keyTimes :: OneOf ((
    typed :: String,
    typed :: Number)),
  lengthAdjust :: OneOf ((
    typed :: String,
    typed :: Number)),
  limitingConeAngle :: OneOf ((
    typed :: String,
    typed :: Number)),
  markerHeight :: OneOf ((
    typed :: String,
    typed :: Number)),
  markerUnits :: OneOf ((
    typed :: String,
    typed :: Number)),
  markerWidth :: OneOf ((
    typed :: String,
    typed :: Number)),
  maskContentUnits :: OneOf ((
    typed :: String,
    typed :: Number)),
  maskUnits :: OneOf ((
    typed :: String,
    typed :: Number)),
  mode :: OneOf ((
    typed :: String,
    typed :: Number)),
  numOctaves :: OneOf ((
    typed :: String,
    typed :: Number)),
  operator :: OneOf ((
    typed :: String,
    typed :: Number)),
  orient :: OneOf ((
    typed :: String,
    typed :: Number)),
  orientation :: OneOf ((
    typed :: String,
    typed :: Number)),
  origin :: OneOf ((
    typed :: String,
    typed :: Number)),
  overlinePosition :: OneOf ((
    typed :: String,
    typed :: Number)),
  overlineThickness :: OneOf ((
    typed :: String,
    typed :: Number)),
  panose1 :: OneOf ((
    typed :: String,
    typed :: Number)),
  pathLength :: OneOf ((
    typed :: String,
    typed :: Number)),
  patternContentUnits :: String,
  patternTransform :: OneOf ((
    typed :: String,
    typed :: Number)),
  patternUnits :: String,
  points :: String,
  pointsAtX :: OneOf ((
    typed :: String,
    typed :: Number)),
  pointsAtY :: OneOf ((
    typed :: String,
    typed :: Number)),
  pointsAtZ :: OneOf ((
    typed :: String,
    typed :: Number)),
  preserveAlpha :: OneOf ((
    typed :: String,
    typed :: Number)),
  preserveAspectRatio :: String,
  primitiveUnits :: OneOf ((
    typed :: String,
    typed :: Number)),
  r :: OneOf ((
    typed :: String,
    typed :: Number)),
  radius :: OneOf ((
    typed :: String,
    typed :: Number)),
  refX :: OneOf ((
    typed :: String,
    typed :: Number)),
  refY :: OneOf ((
    typed :: String,
    typed :: Number)),
  renderingIntent :: OneOf ((
    typed :: String,
    typed :: Number)),
  repeatCount :: OneOf ((
    typed :: String,
    typed :: Number)),
  repeatDur :: OneOf ((
    typed :: String,
    typed :: Number)),
  requiredExtensions :: OneOf ((
    typed :: String,
    typed :: Number)),
  requiredFeatures :: OneOf ((
    typed :: String,
    typed :: Number)),
  restart :: OneOf ((
    typed :: String,
    typed :: Number)),
  result :: String,
  rx :: OneOf ((
    typed :: String,
    typed :: Number)),
  ry :: OneOf ((
    typed :: String,
    typed :: Number)),
  seed :: OneOf ((
    typed :: String,
    typed :: Number)),
  slope :: OneOf ((
    typed :: String,
    typed :: Number)),
  specularConstant :: OneOf ((
    typed :: String,
    typed :: Number)),
  specularExponent :: OneOf ((
    typed :: String,
    typed :: Number)),
  speed :: OneOf ((
    typed :: String,
    typed :: Number)),
  spreadMethod :: String,
  startOffset :: OneOf ((
    typed :: String,
    typed :: Number)),
  stdDeviation :: OneOf ((
    typed :: String,
    typed :: Number)),
  stemh :: OneOf ((
    typed :: String,
    typed :: Number)),
  stemv :: OneOf ((
    typed :: String,
    typed :: Number)),
  stitchTiles :: OneOf ((
    typed :: String,
    typed :: Number)),
  strikethroughPosition :: OneOf ((
    typed :: String,
    typed :: Number)),
  strikethroughThickness :: OneOf ((
    typed :: String,
    typed :: Number)),
  surfaceScale :: OneOf ((
    typed :: String,
    typed :: Number)),
  systemLanguage :: OneOf ((
    typed :: String,
    typed :: Number)),
  tableValues :: OneOf ((
    typed :: String,
    typed :: Number)),
  targetX :: OneOf ((
    typed :: String,
    typed :: Number)),
  targetY :: OneOf ((
    typed :: String,
    typed :: Number)),
  textLength :: OneOf ((
    typed :: String,
    typed :: Number)),
  to :: OneOf ((
    typed :: String,
    typed :: Number)),
  u1 :: OneOf ((
    typed :: String,
    typed :: Number)),
  u2 :: OneOf ((
    typed :: String,
    typed :: Number)),
  underlinePosition :: OneOf ((
    typed :: String,
    typed :: Number)),
  underlineThickness :: OneOf ((
    typed :: String,
    typed :: Number)),
  unicode :: OneOf ((
    typed :: String,
    typed :: Number)),
  unicodeRange :: OneOf ((
    typed :: String,
    typed :: Number)),
  unitsPerEm :: OneOf ((
    typed :: String,
    typed :: Number)),
  vAlphabetic :: OneOf ((
    typed :: String,
    typed :: Number)),
  values :: String,
  version :: String,
  vertAdvY :: OneOf ((
    typed :: String,
    typed :: Number)),
  vertOriginX :: OneOf ((
    typed :: String,
    typed :: Number)),
  vertOriginY :: OneOf ((
    typed :: String,
    typed :: Number)),
  vHanging :: OneOf ((
    typed :: String,
    typed :: Number)),
  vIdeographic :: OneOf ((
    typed :: String,
    typed :: Number)),
  viewTarget :: OneOf ((
    typed :: String,
    typed :: Number)),
  vMathematical :: OneOf ((
    typed :: String,
    typed :: Number)),
  widths :: OneOf ((
    typed :: String,
    typed :: Number)),
  x1 :: OneOf ((
    typed :: String,
    typed :: Number)),
  x2 :: OneOf ((
    typed :: String,
    typed :: Number)),
  x :: OneOf ((
    typed :: String,
    typed :: Number)),
  xChannelSelector :: String,
  xHeight :: OneOf ((
    typed :: String,
    typed :: Number)),
  xlinkActuate :: String,
  xlinkArcrole :: String,
  xlinkHref :: String,
  xlinkRole :: String,
  xlinkShow :: String,
  xlinkTitle :: String,
  xlinkType :: String,
  xmlBase :: String,
  xmlLang :: String,
  xmlns :: String,
  xmlnsXlink :: String,
  xmlSpace :: String,
  y1 :: OneOf ((
    typed :: String,
    typed :: Number)),
  y2 :: OneOf ((
    typed :: String,
    typed :: Number)),
  y :: OneOf ((
    typed :: String,
    typed :: Number)),
  yChannelSelector :: String,
  z :: OneOf ((
    typed :: String,
    typed :: Number)),
  zoomAndPan :: String,
  classes :: Any {--unknown--},
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})) | r )
type SvgIconPropsM  = (
)
foreign import svgIcon :: forall a. IsTSRecord a (SvgIconPropsO SvgIconPropsM) SvgIconPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)