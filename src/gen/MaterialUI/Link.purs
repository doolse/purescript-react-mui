module MaterialUI.Link where
import Data.TSCompat (Any, OneOf, OptionRecord, StringConst)
import Data.TSCompat.Class (class IsTSEq)
import Data.TSCompat.React (unsafeCreateElement)
import Data.Unit (Unit)
import Effect.Uncurried (EffectFn1)
import React (unsafeCreateLeafElement, ReactClass, ReactElement)
import React.SyntheticEvent (SyntheticAnimationEvent, SyntheticClipboardEvent, SyntheticCompositionEvent, SyntheticEvent, SyntheticFocusEvent, SyntheticKeyboardEvent, SyntheticMouseEvent, SyntheticTouchEvent, SyntheticTransitionEvent, SyntheticUIEvent, SyntheticWheelEvent)

foreign import classLink :: forall a. ReactClass a

type LinkPropsO r = (
  key :: OneOf (
    typed :: String, 
    typed :: Number
  ), 
  block :: Boolean, 
  color :: OneOf (
    typed :: StringConst "inherit", 
    typed :: StringConst "default", 
    typed :: StringConst "primary", 
    typed :: StringConst "secondary"
  ), 
  component :: OneOf (
    typed :: String, 
    typed :: Any {-- React.ComponentClass<"/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/Link/Link".LinkProps<>, any>--}, 
    typed :: Any {-- (props: "/home/doolse/git/purescript-react-mui/synctypes/node_modules/@material-ui/core/es/Link/Link".LinkProps<> | {children: boolean | undefined | null | string | number | {} | React.ReactElement<any> | React.ReactNodeArray<> | React.ReactPortal<>}, context: any => null | React.ReactElement<any>)--}
  ), 
  "TypographyClasses" :: Any {-- unknown--}, 
  underline :: OneOf (
    typed :: StringConst "none", 
    typed :: StringConst "always", 
    typed :: StringConst "hover"
  ), 
  hidden :: Boolean, 
  style :: Any {-- React.CSSProperties<>--}, 
  inline :: Boolean, 
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
  "aria-label" :: String, 
  dangerouslySetInnerHTML :: Record (
    "__html" :: String
  ), 
  onChange :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onClick :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  innerRef :: OneOf (
    typed :: String, 
    typed :: Any -> Any, 
    typed :: Any {-- React.RefObject<any>--}
  ), 
  download :: Any, 
  href :: String, 
  hrefLang :: String, 
  media :: String, 
  rel :: String, 
  target :: String, 
  type :: String, 
  noWrap :: Boolean, 
  gutterBottom :: Boolean, 
  paragraph :: Boolean, 
  align :: OneOf (
    typed :: StringConst "left", 
    typed :: StringConst "right", 
    typed :: StringConst "inherit", 
    typed :: StringConst "center", 
    typed :: StringConst "justify"
  ), 
  headlineMapping :: Any {-- unknown--}, 
  variant :: OneOf (
    typed :: StringConst "inherit", 
    typed :: StringConst "overline", 
    typed :: StringConst "caption", 
    typed :: StringConst "button", 
    typed :: StringConst "title", 
    typed :: StringConst "h1", 
    typed :: StringConst "h2", 
    typed :: StringConst "h3", 
    typed :: StringConst "h4", 
    typed :: StringConst "h5", 
    typed :: StringConst "h6", 
    typed :: StringConst "subtitle1", 
    typed :: StringConst "subtitle2", 
    typed :: StringConst "body1", 
    typed :: StringConst "body2", 
    typed :: StringConst "srOnly", 
    typed :: StringConst "display4", 
    typed :: StringConst "display3", 
    typed :: StringConst "display2", 
    typed :: StringConst "display1", 
    typed :: StringConst "headline", 
    typed :: StringConst "subheading"
  ), 
  classes :: Any {-- unknown--}
 | r)

type LinkPropsM  = (
)

type LinkPropsE r = (
  "aria-activedescendant" :: String, 
  "aria-atomic" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-autocomplete" :: OneOf (
    typed :: StringConst "both", 
    typed :: StringConst "none", 
    typed :: StringConst "inline", 
    typed :: StringConst "list"
  ), 
  "aria-busy" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-checked" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "mixed", 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-colcount" :: Number, 
  "aria-colindex" :: Number, 
  "aria-colspan" :: Number, 
  "aria-controls" :: String, 
  "aria-current" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "page", 
    typed :: StringConst "false", 
    typed :: StringConst "true", 
    typed :: StringConst "step", 
    typed :: StringConst "location", 
    typed :: StringConst "date", 
    typed :: StringConst "time"
  ), 
  "aria-describedby" :: String, 
  "aria-details" :: String, 
  "aria-disabled" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-dropeffect" :: OneOf (
    typed :: StringConst "none", 
    typed :: StringConst "copy", 
    typed :: StringConst "move", 
    typed :: StringConst "execute", 
    typed :: StringConst "link", 
    typed :: StringConst "popup"
  ), 
  "aria-errormessage" :: String, 
  "aria-expanded" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-flowto" :: String, 
  "aria-grabbed" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-haspopup" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "grid", 
    typed :: StringConst "menu", 
    typed :: StringConst "listbox", 
    typed :: StringConst "false", 
    typed :: StringConst "true", 
    typed :: StringConst "tree", 
    typed :: StringConst "dialog"
  ), 
  "aria-hidden" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-invalid" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true", 
    typed :: StringConst "grammar", 
    typed :: StringConst "spelling"
  ), 
  "aria-keyshortcuts" :: String, 
  "aria-labelledby" :: String, 
  "aria-level" :: Number, 
  "aria-live" :: OneOf (
    typed :: StringConst "off", 
    typed :: StringConst "assertive", 
    typed :: StringConst "polite"
  ), 
  "aria-modal" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-multiline" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-multiselectable" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-orientation" :: OneOf (
    typed :: StringConst "horizontal", 
    typed :: StringConst "vertical"
  ), 
  "aria-owns" :: String, 
  "aria-placeholder" :: String, 
  "aria-posinset" :: Number, 
  "aria-pressed" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "mixed", 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-readonly" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-relevant" :: OneOf (
    typed :: StringConst "all", 
    typed :: StringConst "text", 
    typed :: StringConst "additions", 
    typed :: StringConst "additions text", 
    typed :: StringConst "removals"
  ), 
  "aria-required" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-roledescription" :: String, 
  "aria-rowcount" :: Number, 
  "aria-rowindex" :: Number, 
  "aria-rowspan" :: Number, 
  "aria-selected" :: OneOf (
    typed :: Boolean, 
    typed :: StringConst "false", 
    typed :: StringConst "true"
  ), 
  "aria-setsize" :: Number, 
  "aria-sort" :: OneOf (
    typed :: StringConst "none", 
    typed :: StringConst "ascending", 
    typed :: StringConst "descending", 
    typed :: StringConst "other"
  ), 
  "aria-valuemax" :: Number, 
  "aria-valuemin" :: Number, 
  "aria-valuenow" :: Number, 
  "aria-valuetext" :: String, 
  onCopy :: OneOf (
    typed :: EffectFn1 SyntheticClipboardEvent Unit, 
    typed :: EffectFn1 SyntheticClipboardEvent Unit
  ), 
  onCopyCapture :: OneOf (
    typed :: EffectFn1 SyntheticClipboardEvent Unit, 
    typed :: EffectFn1 SyntheticClipboardEvent Unit
  ), 
  onCut :: OneOf (
    typed :: EffectFn1 SyntheticClipboardEvent Unit, 
    typed :: EffectFn1 SyntheticClipboardEvent Unit
  ), 
  onCutCapture :: OneOf (
    typed :: EffectFn1 SyntheticClipboardEvent Unit, 
    typed :: EffectFn1 SyntheticClipboardEvent Unit
  ), 
  onPaste :: OneOf (
    typed :: EffectFn1 SyntheticClipboardEvent Unit, 
    typed :: EffectFn1 SyntheticClipboardEvent Unit
  ), 
  onPasteCapture :: OneOf (
    typed :: EffectFn1 SyntheticClipboardEvent Unit, 
    typed :: EffectFn1 SyntheticClipboardEvent Unit
  ), 
  onCompositionEnd :: OneOf (
    typed :: EffectFn1 SyntheticCompositionEvent Unit, 
    typed :: EffectFn1 SyntheticCompositionEvent Unit
  ), 
  onCompositionEndCapture :: OneOf (
    typed :: EffectFn1 SyntheticCompositionEvent Unit, 
    typed :: EffectFn1 SyntheticCompositionEvent Unit
  ), 
  onCompositionStart :: OneOf (
    typed :: EffectFn1 SyntheticCompositionEvent Unit, 
    typed :: EffectFn1 SyntheticCompositionEvent Unit
  ), 
  onCompositionStartCapture :: OneOf (
    typed :: EffectFn1 SyntheticCompositionEvent Unit, 
    typed :: EffectFn1 SyntheticCompositionEvent Unit
  ), 
  onCompositionUpdate :: OneOf (
    typed :: EffectFn1 SyntheticCompositionEvent Unit, 
    typed :: EffectFn1 SyntheticCompositionEvent Unit
  ), 
  onCompositionUpdateCapture :: OneOf (
    typed :: EffectFn1 SyntheticCompositionEvent Unit, 
    typed :: EffectFn1 SyntheticCompositionEvent Unit
  ), 
  onFocus :: OneOf (
    typed :: EffectFn1 SyntheticFocusEvent Unit, 
    typed :: EffectFn1 SyntheticFocusEvent Unit
  ), 
  onFocusCapture :: OneOf (
    typed :: EffectFn1 SyntheticFocusEvent Unit, 
    typed :: EffectFn1 SyntheticFocusEvent Unit
  ), 
  onBlur :: OneOf (
    typed :: EffectFn1 SyntheticFocusEvent Unit, 
    typed :: EffectFn1 SyntheticFocusEvent Unit
  ), 
  onBlurCapture :: OneOf (
    typed :: EffectFn1 SyntheticFocusEvent Unit, 
    typed :: EffectFn1 SyntheticFocusEvent Unit
  ), 
  onChangeCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onInput :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onInputCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onReset :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onResetCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSubmit :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSubmitCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onInvalid :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onInvalidCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLoad :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLoadCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onError :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onErrorCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onKeyDown :: OneOf (
    typed :: EffectFn1 SyntheticKeyboardEvent Unit, 
    typed :: EffectFn1 SyntheticKeyboardEvent Unit
  ), 
  onKeyDownCapture :: OneOf (
    typed :: EffectFn1 SyntheticKeyboardEvent Unit, 
    typed :: EffectFn1 SyntheticKeyboardEvent Unit
  ), 
  onKeyPress :: OneOf (
    typed :: EffectFn1 SyntheticKeyboardEvent Unit, 
    typed :: EffectFn1 SyntheticKeyboardEvent Unit
  ), 
  onKeyPressCapture :: OneOf (
    typed :: EffectFn1 SyntheticKeyboardEvent Unit, 
    typed :: EffectFn1 SyntheticKeyboardEvent Unit
  ), 
  onKeyUp :: OneOf (
    typed :: EffectFn1 SyntheticKeyboardEvent Unit, 
    typed :: EffectFn1 SyntheticKeyboardEvent Unit
  ), 
  onKeyUpCapture :: OneOf (
    typed :: EffectFn1 SyntheticKeyboardEvent Unit, 
    typed :: EffectFn1 SyntheticKeyboardEvent Unit
  ), 
  onAbort :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onAbortCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onCanPlay :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onCanPlayCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onCanPlayThrough :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onCanPlayThroughCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDurationChange :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDurationChangeCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onEmptied :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onEmptiedCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onEncrypted :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onEncryptedCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onEnded :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onEndedCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLoadedData :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLoadedDataCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLoadedMetadata :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLoadedMetadataCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLoadStart :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLoadStartCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPause :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPauseCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPlay :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPlayCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPlaying :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPlayingCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onProgress :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onProgressCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onRateChange :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onRateChangeCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSeeked :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSeekedCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSeeking :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSeekingCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onStalled :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onStalledCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSuspend :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSuspendCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onTimeUpdate :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onTimeUpdateCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onVolumeChange :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onVolumeChangeCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onWaiting :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onWaitingCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onClickCapture :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onContextMenu :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onContextMenuCapture :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onDoubleClick :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onDoubleClickCapture :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onDrag :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragEnd :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragEndCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragEnter :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragEnterCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragExit :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragExitCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragLeave :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragLeaveCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragOver :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragOverCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragStart :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDragStartCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDrop :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onDropCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onMouseDown :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseDownCapture :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseEnter :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseLeave :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseMove :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseMoveCapture :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseOut :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseOutCapture :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseOver :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseOverCapture :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseUp :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onMouseUpCapture :: OneOf (
    typed :: EffectFn1 SyntheticMouseEvent Unit, 
    typed :: EffectFn1 SyntheticMouseEvent Unit
  ), 
  onSelect :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onSelectCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onTouchCancel :: OneOf (
    typed :: EffectFn1 SyntheticTouchEvent Unit, 
    typed :: EffectFn1 SyntheticTouchEvent Unit
  ), 
  onTouchCancelCapture :: OneOf (
    typed :: EffectFn1 SyntheticTouchEvent Unit, 
    typed :: EffectFn1 SyntheticTouchEvent Unit
  ), 
  onTouchEnd :: OneOf (
    typed :: EffectFn1 SyntheticTouchEvent Unit, 
    typed :: EffectFn1 SyntheticTouchEvent Unit
  ), 
  onTouchEndCapture :: OneOf (
    typed :: EffectFn1 SyntheticTouchEvent Unit, 
    typed :: EffectFn1 SyntheticTouchEvent Unit
  ), 
  onTouchMove :: OneOf (
    typed :: EffectFn1 SyntheticTouchEvent Unit, 
    typed :: EffectFn1 SyntheticTouchEvent Unit
  ), 
  onTouchMoveCapture :: OneOf (
    typed :: EffectFn1 SyntheticTouchEvent Unit, 
    typed :: EffectFn1 SyntheticTouchEvent Unit
  ), 
  onTouchStart :: OneOf (
    typed :: EffectFn1 SyntheticTouchEvent Unit, 
    typed :: EffectFn1 SyntheticTouchEvent Unit
  ), 
  onTouchStartCapture :: OneOf (
    typed :: EffectFn1 SyntheticTouchEvent Unit, 
    typed :: EffectFn1 SyntheticTouchEvent Unit
  ), 
  onPointerDown :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerDownCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerMove :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerMoveCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerUp :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerUpCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerCancel :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerCancelCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerEnter :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerEnterCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerLeave :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerLeaveCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerOver :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerOverCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerOut :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onPointerOutCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onGotPointerCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onGotPointerCaptureCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLostPointerCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onLostPointerCaptureCapture :: OneOf (
    typed :: EffectFn1 SyntheticEvent Unit, 
    typed :: EffectFn1 SyntheticEvent Unit
  ), 
  onScroll :: OneOf (
    typed :: EffectFn1 SyntheticUIEvent Unit, 
    typed :: EffectFn1 SyntheticUIEvent Unit
  ), 
  onScrollCapture :: OneOf (
    typed :: EffectFn1 SyntheticUIEvent Unit, 
    typed :: EffectFn1 SyntheticUIEvent Unit
  ), 
  onWheel :: OneOf (
    typed :: EffectFn1 SyntheticWheelEvent Unit, 
    typed :: EffectFn1 SyntheticWheelEvent Unit
  ), 
  onWheelCapture :: OneOf (
    typed :: EffectFn1 SyntheticWheelEvent Unit, 
    typed :: EffectFn1 SyntheticWheelEvent Unit
  ), 
  onAnimationStart :: OneOf (
    typed :: EffectFn1 SyntheticAnimationEvent Unit, 
    typed :: EffectFn1 SyntheticAnimationEvent Unit
  ), 
  onAnimationStartCapture :: OneOf (
    typed :: EffectFn1 SyntheticAnimationEvent Unit, 
    typed :: EffectFn1 SyntheticAnimationEvent Unit
  ), 
  onAnimationEnd :: OneOf (
    typed :: EffectFn1 SyntheticAnimationEvent Unit, 
    typed :: EffectFn1 SyntheticAnimationEvent Unit
  ), 
  onAnimationEndCapture :: OneOf (
    typed :: EffectFn1 SyntheticAnimationEvent Unit, 
    typed :: EffectFn1 SyntheticAnimationEvent Unit
  ), 
  onAnimationIteration :: OneOf (
    typed :: EffectFn1 SyntheticAnimationEvent Unit, 
    typed :: EffectFn1 SyntheticAnimationEvent Unit
  ), 
  onAnimationIterationCapture :: OneOf (
    typed :: EffectFn1 SyntheticAnimationEvent Unit, 
    typed :: EffectFn1 SyntheticAnimationEvent Unit
  ), 
  onTransitionEnd :: OneOf (
    typed :: EffectFn1 SyntheticTransitionEvent Unit, 
    typed :: EffectFn1 SyntheticTransitionEvent Unit
  ), 
  onTransitionEndCapture :: OneOf (
    typed :: EffectFn1 SyntheticTransitionEvent Unit, 
    typed :: EffectFn1 SyntheticTransitionEvent Unit
  )
 | r)

link :: forall a. IsTSEq (Record a) (OptionRecord (LinkPropsO LinkPropsM) LinkPropsM) => Record a -> Array ReactElement -> ReactElement
link = unsafeCreateElement classLink

link_ :: Array ReactElement -> ReactElement
link_ = unsafeCreateElement classLink {}

link' :: forall a. IsTSEq (Record a) (OptionRecord (LinkPropsO LinkPropsM) LinkPropsM) => Record a -> ReactElement
link' = unsafeCreateLeafElement classLink

link'' :: forall a. IsTSEq (Record a) (OptionRecord (LinkPropsO (LinkPropsE LinkPropsM)) LinkPropsM) => Record a -> Array ReactElement -> ReactElement
link'' = unsafeCreateElement classLink