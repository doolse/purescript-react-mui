module ReactMUI.SpeedDialAction where
import Data.TSCompat (Any, OneOf, StringConst)
import Data.TSCompat.Class (class IsTSRecord)
import Data.TSCompat.React (ReactNode)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (ReactElement)

type SpeedDialActionPropsO r = (
  "ButtonProps" :: Any {--unknown--},
  delay :: Number,
  tooltipPlacement :: OneOf ((
    typed :: StringConst ("bottom"),
    typed :: StringConst ("left"),
    typed :: StringConst ("right"),
    typed :: StringConst ("top"),
    typed :: StringConst ("bottom-end"),
    typed :: StringConst ("bottom-start"),
    typed :: StringConst ("left-end"),
    typed :: StringConst ("left-start"),
    typed :: StringConst ("right-end"),
    typed :: StringConst ("right-start"),
    typed :: StringConst ("top-end"),
    typed :: StringConst ("top-start"))),
  tooltipTitle :: ReactNode,
  color :: OneOf ((
    typed :: StringConst ("inherit"),
    typed :: StringConst ("default"),
    typed :: StringConst ("primary"),
    typed :: StringConst ("secondary"))),
  hidden :: Boolean,
  size :: OneOf ((
    typed :: StringConst ("medium"),
    typed :: StringConst ("large"),
    typed :: StringConst ("small"))),
  style :: Any {--React.CSSProperties<>--},
  open :: Boolean,
  disabled :: Boolean,
  defaultChecked :: Boolean,
  defaultValue :: OneOf ((
    typed :: String,
    typed :: Array String)),
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
  title :: OneOf ((
    typed :: String,
    typed :: OneOf ((
      typed :: String,
      typed :: Any {--{}--})),
    typed :: OneOf ((
      typed :: String,
      typed :: ReactElement)),
    typed :: OneOf ((
      typed :: String,
      typed :: Any {--React.ReactNodeArray<>--})),
    typed :: OneOf ((
      typed :: String,
      typed :: Any {--React.ReactPortal<>--})))),
  inputMode :: String,
  is :: String,
  radioGroup :: String,
  role :: String,
  about :: String,
  datatype :: String,
  inlist :: Any {--any--},
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
  unselectable :: Boolean,
  dangerouslySetInnerHTML :: Any {--{__html: string}--},
  onCopy :: OneOf ((
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLDivElement>--}) Unit)),
  onCopyCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLDivElement>--}) Unit)),
  onCut :: OneOf ((
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLDivElement>--}) Unit)),
  onCutCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLDivElement>--}) Unit)),
  onPaste :: OneOf ((
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLDivElement>--}) Unit)),
  onPasteCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.ClipboardEvent<interface HTMLDivElement>--}) Unit)),
  onCompositionEnd :: OneOf ((
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLDivElement>--}) Unit)),
  onCompositionEndCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLDivElement>--}) Unit)),
  onCompositionStart :: OneOf ((
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLDivElement>--}) Unit)),
  onCompositionStartCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLDivElement>--}) Unit)),
  onCompositionUpdate :: OneOf ((
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLDivElement>--}) Unit)),
  onCompositionUpdateCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.CompositionEvent<interface HTMLDivElement>--}) Unit)),
  onFocus :: OneOf ((
    typed :: EffectFn1 (Any {--React.FocusEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FocusEvent<interface HTMLDivElement>--}) Unit)),
  onFocusCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.FocusEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FocusEvent<interface HTMLDivElement>--}) Unit)),
  onBlur :: OneOf ((
    typed :: EffectFn1 (Any {--React.FocusEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FocusEvent<interface HTMLDivElement>--}) Unit)),
  onBlurCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.FocusEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FocusEvent<interface HTMLDivElement>--}) Unit)),
  onChange :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onChangeCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onInput :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onInputCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onReset :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onResetCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onSubmit :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onSubmitCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onInvalid :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onInvalidCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.FormEvent<interface HTMLDivElement>--}) Unit)),
  onLoad :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onLoadCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onError :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onErrorCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onKeyDown :: OneOf ((
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLDivElement>--}) Unit)),
  onKeyDownCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLDivElement>--}) Unit)),
  onKeyPress :: OneOf ((
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLDivElement>--}) Unit)),
  onKeyPressCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLDivElement>--}) Unit)),
  onKeyUp :: OneOf ((
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLDivElement>--}) Unit)),
  onKeyUpCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.KeyboardEvent<interface HTMLDivElement>--}) Unit)),
  onAbort :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onAbortCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onCanPlay :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onCanPlayCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onCanPlayThrough :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onCanPlayThroughCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onDurationChange :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onDurationChangeCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onEmptied :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onEmptiedCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onEncrypted :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onEncryptedCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onEnded :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onEndedCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onLoadedData :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onLoadedDataCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onLoadedMetadata :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onLoadedMetadataCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onLoadStart :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onLoadStartCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onPause :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onPauseCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onPlay :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onPlayCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onPlaying :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onPlayingCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onProgress :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onProgressCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onRateChange :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onRateChangeCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onSeeked :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onSeekedCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onSeeking :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onSeekingCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onStalled :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onStalledCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onSuspend :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onSuspendCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onTimeUpdate :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onTimeUpdateCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onVolumeChange :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onVolumeChangeCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onWaiting :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onWaitingCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onClick :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onClickCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onContextMenu :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onContextMenuCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onDoubleClick :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onDoubleClickCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onDrag :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragEnd :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragEndCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragEnter :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragEnterCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragExit :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragExitCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragLeave :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragLeaveCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragOver :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragOverCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragStart :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDragStartCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDrop :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onDropCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.DragEvent<interface HTMLDivElement>--}) Unit)),
  onMouseDown :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseDownCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseEnter :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseLeave :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseMove :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseMoveCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseOut :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseOutCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseOver :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseOverCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseUp :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onMouseUpCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.MouseEvent<interface HTMLDivElement>--}) Unit)),
  onSelect :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onSelectCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.SyntheticEvent<interface HTMLDivElement>--}) Unit)),
  onTouchCancel :: OneOf ((
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLDivElement>--}) Unit)),
  onTouchCancelCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLDivElement>--}) Unit)),
  onTouchEnd :: OneOf ((
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLDivElement>--}) Unit)),
  onTouchEndCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLDivElement>--}) Unit)),
  onTouchMove :: OneOf ((
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLDivElement>--}) Unit)),
  onTouchMoveCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLDivElement>--}) Unit)),
  onTouchStart :: OneOf ((
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLDivElement>--}) Unit)),
  onTouchStartCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TouchEvent<interface HTMLDivElement>--}) Unit)),
  onPointerDown :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerDownCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerMove :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerMoveCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerUp :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerUpCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerCancel :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerCancelCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerEnter :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerEnterCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerLeave :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerLeaveCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerOver :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerOverCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerOut :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onPointerOutCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onGotPointerCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onGotPointerCaptureCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onLostPointerCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onLostPointerCaptureCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.PointerEvent<interface HTMLDivElement>--}) Unit)),
  onScroll :: OneOf ((
    typed :: EffectFn1 (Any {--React.UIEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.UIEvent<interface HTMLDivElement>--}) Unit)),
  onScrollCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.UIEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.UIEvent<interface HTMLDivElement>--}) Unit)),
  onWheel :: OneOf ((
    typed :: EffectFn1 (Any {--React.WheelEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.WheelEvent<interface HTMLDivElement>--}) Unit)),
  onWheelCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.WheelEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.WheelEvent<interface HTMLDivElement>--}) Unit)),
  onAnimationStart :: OneOf ((
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLDivElement>--}) Unit)),
  onAnimationStartCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLDivElement>--}) Unit)),
  onAnimationEnd :: OneOf ((
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLDivElement>--}) Unit)),
  onAnimationEndCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLDivElement>--}) Unit)),
  onAnimationIteration :: OneOf ((
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLDivElement>--}) Unit)),
  onAnimationIterationCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.AnimationEvent<interface HTMLDivElement>--}) Unit)),
  onTransitionEnd :: OneOf ((
    typed :: EffectFn1 (Any {--React.TransitionEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TransitionEvent<interface HTMLDivElement>--}) Unit)),
  onTransitionEndCapture :: OneOf ((
    typed :: EffectFn1 (Any {--React.TransitionEvent<interface HTMLElement>--}) Unit,
    typed :: EffectFn1 (Any {--React.TransitionEvent<interface HTMLDivElement>--}) Unit)),
  component :: OneOf ((
    typed :: String,
    typed :: Any {--React.ComponentClass<"/home/jolz/git/material-ui/packages/material-ui/src/Button/Button".ButtonProps<>, any>--},
    typed :: Any {--(props: "/home/jolz/git/material-ui/packages/material-ui/src/Button/Button".ButtonProps<> | {children: undefined | null | string | number | false | true | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--})),
  innerRef :: OneOf ((
    typed :: String,
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})),
  download :: Any {--any--},
  href :: String,
  hrefLang :: String,
  media :: String,
  rel :: String,
  target :: String,
  type :: String,
  autoFocus :: Boolean,
  form :: String,
  formAction :: String,
  formEncType :: String,
  formMethod :: String,
  formNoValidate :: Boolean,
  formTarget :: String,
  name :: String,
  value :: OneOf ((
    typed :: String,
    typed :: Number,
    typed :: Array String)),
  action :: EffectFn1 (Any {--interface "/home/jolz/git/material-ui/packages/material-ui/src/ButtonBase/ButtonBase".ButtonBaseActions--}) Unit,
  buttonRef :: OneOf ((
    typed :: String,
    typed :: Function (Any {--any--}) (Any {--any--}),
    typed :: Any {--React.RefObject<any>--})),
  centerRipple :: Boolean,
  disableRipple :: Boolean,
  disableTouchRipple :: Boolean,
  focusRipple :: Boolean,
  focusVisibleClassName :: String,
  onFocusVisible :: EffectFn1 (Any {--React.FocusEvent<any>--}) Unit,
  "TouchRippleProps" :: OneOf ((
    typed :: Any {--unknown--},
    typed :: Any {--unknown--})),
  variant :: OneOf ((
    typed :: StringConst ("text"),
    typed :: StringConst ("flat"),
    typed :: StringConst ("outlined"),
    typed :: StringConst ("contained"),
    typed :: StringConst ("raised"),
    typed :: StringConst ("fab"),
    typed :: StringConst ("extendedFab"))),
  onClose :: EffectFn1 (Any {--React.ChangeEvent<{}>--}) Unit,
  fullWidth :: Boolean,
  "TransitionComponent" :: OneOf ((
    typed :: String,
    typed :: Any {--React.ComponentClass<any, any>--},
    typed :: Any {--(props: any, context: any => null | React.ReactElement<any>)--})),
  "TransitionProps" :: Any {--"/home/jolz/git/material-ui/packages/material-ui/src/transitions/transition".TransitionProps<>--},
  onOpen :: EffectFn1 (Any {--React.ChangeEvent<{}>--}) Unit,
  mini :: Boolean,
  disableFocusRipple :: Boolean,
  disableFocusListener :: Boolean,
  disableHoverListener :: Boolean,
  disableTouchListener :: Boolean,
  enterDelay :: Number,
  enterTouchDelay :: Number,
  leaveDelay :: Number,
  leaveTouchDelay :: Number,
  placement :: OneOf ((
    typed :: StringConst ("bottom"),
    typed :: StringConst ("left"),
    typed :: StringConst ("right"),
    typed :: StringConst ("top"),
    typed :: StringConst ("bottom-end"),
    typed :: StringConst ("bottom-start"),
    typed :: StringConst ("left-end"),
    typed :: StringConst ("left-start"),
    typed :: StringConst ("right-end"),
    typed :: StringConst ("right-start"),
    typed :: StringConst ("top-end"),
    typed :: StringConst ("top-start"))),
  "PopperProps" :: Any {--unknown--},
  classes :: Any {--unknown--} | r )
type SpeedDialActionPropsM  = (
  icon :: ReactNode)
foreign import speedDialAction :: forall a. IsTSRecord a (SpeedDialActionPropsO SpeedDialActionPropsM) SpeedDialActionPropsM => Function (Record a) (Function (Array ReactElement) ReactElement)