module MaterialUI.SvgIcon where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (unsafeCreateElement, unsafeCreateLeafElement, ReactClass, ReactElement)
import React.SyntheticEvent (SyntheticAnimationEvent, SyntheticClipboardEvent, SyntheticCompositionEvent, SyntheticEvent, SyntheticFocusEvent, SyntheticKeyboardEvent, SyntheticMouseEvent, SyntheticTouchEvent, SyntheticTransitionEvent, SyntheticUIEvent, SyntheticWheelEvent)

foreign import classSvgIcon :: forall a. ReactClass a

type SvgIconPropsO r = (
  key :: OneOf ((
    typed :: String,
    typed :: Number)),
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
    typed :: Any {--React.ComponentClass<"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/SvgIcon/SvgIcon".SvgIconProps<>, any>--},
    typed :: Any {--(props: "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/SvgIcon/SvgIcon".SvgIconProps<> | {children: undefined | null | string | number | false | true | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--})),
  fontSize :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("default"),
    typed :: StringConst ("large"),
    typed :: StringConst ("small"))),
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
    typed :: StringConst ("middle"),
    typed :: StringConst ("after-edge"),
    typed :: StringConst ("alphabetic"),
    typed :: StringConst ("before-edge"),
    typed :: StringConst ("central"),
    typed :: StringConst ("hanging"),
    typed :: StringConst ("ideographic"),
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
  dangerouslySetInnerHTML :: Record ((
    "__html" :: String)),
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
      typed :: Any {--interface SVGSVGElement--}))) Any,
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
    typed :: Function Any Any,
    typed :: Any {--React.RefObject<any>--})) | r )

type SvgIconPropsM  = (
)

svgIcon :: forall a. IsTSEq (Record a) (OptionRecord (SvgIconPropsO SvgIconPropsM) SvgIconPropsM) => Function (Record a) (Function (Array ReactElement) ReactElement)
svgIcon = unsafeCreateElement classSvgIcon

svgIcon_ :: Function (Array ReactElement) ReactElement
svgIcon_ = unsafeCreateElement classSvgIcon {}

svgIcon' :: forall a. IsTSEq (Record a) (OptionRecord (SvgIconPropsO SvgIconPropsM) SvgIconPropsM) => Function (Record a) ReactElement
svgIcon' = unsafeCreateLeafElement classSvgIcon