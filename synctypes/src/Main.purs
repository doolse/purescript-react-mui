module Main where 

import Prelude

import Data.Bifunctor (rmap)
import Data.Filterable (filterMap)
import Data.Foldable (traverse_)
import Data.Maybe (Maybe(..), maybe)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Foreign.Object as M
import MuiConvert (CompDetails, ReactProps(..), moduleSource, tsToPsProps)
import Node.Encoding as E
import Node.FS.Sync (writeTextFile) as FS
import TsParser (PropsI(..), readInterfaces)

included :: M.Object CompDetails
included = M.fromFoldable [t "ButtonProps" "Button", t "ButtonBaseProps" "ButtonBase"
    , t "AppBarProps" "AppBar" , t "AvatarProps" "Avatar", t "StandardProps" ""
    , t "MenuProps" "Menu", t "MenuItemProps" "MenuItem", noChildren $ t "ChipProps" "Chip"
    , t "ToolbarProps" "Toolbar"
    , t "CardProps" "Card"
    , t "CardHeaderProps" "CardHeader"
    , t "CardMediaProps" "CardMedia"
    , t "CardActionsProps" "CardActions"
    , t "CardContentProps" "CardContent"
    , t "TypographyProps" "Typography", t "BadgeProps" "Badge"
    , t "PaperProps" "Paper", t "TableProps" "Table", t "TableHeadProps" "TableHead"
    , t "TableRowProps" "TableRow", t "TableCellProps" "TableCell"
    , t "TableBodyProps" "TableBody", t "TableFooterProps" "TableFooter"
    , t "IconProps" "Icon"
    , noChildren $ t "CircularProgressProps" "CircularProgress"
    , noChildren $ t "LinearProgressProps" "LinearProgress"
    , trans "Fade", trans "Collapse", trans "Grow", trans "Slide", trans "Zoom"
    , t "DrawerProps" "Drawer", noChildren $ t "DividerProps" "Divider", t "ListProps" "List"
    , t "MenuListProps" "MenuList"
    , t "ListItemProps" "ListItem", t "ListItemIconProps" "ListItemIcon"
    , t "ListSubheaderProps" "ListSubheader"
    , t "ListItemSecondaryActionProps" "ListItemSecondaryAction", noChildren $ t "ListItemTextProps" "ListItemText"
    , t "HiddenProps" "Hidden", t "IconButtonProps" "IconButton", noChildren $ t "TextFieldProps" "TextField"
    , t "CssBaselineProps" "CssBaseline", t "PopoverProps" "Popover", t "ModalProps" "Modal"
    , t "ExpansionPanelProps" "ExpansionPanel", t "ExpansionPanelDetailsProps" "ExpansionPanelDetails"
    , t "ExpansionPanelSummaryProps" "ExpansionPanelSummary"
    , t "SelectProps" "Select"
    , t "DialogProps" "Dialog", t "DialogTitleProps" "DialogTitle" 
    , t "DialogContentTextProps" "DialogContentText"
    , t "DialogActionsProps" "DialogActions", t "DialogContentProps" "DialogContent"
    , noChildren $ t "SwitchProps" "Switch", noChildren $ t "RadioProps" "Radio"
    , t "RadioGroupProps" "RadioGroup"
    , t "FormGroupProps" "FormGroup"
    , t "FormLabelProps" "FormLabel", t "FormControlProps" "FormControl"
    , noChildren $ t "FormControlLabelProps" "FormControlLabel", t "FormHelperTextProps" "FormHelperText"
    , noChildren $ t "CheckboxProps" "Checkbox", rmap _ {require=Nothing} $ t "SwitchBaseProps" "SwitchBase"
    , t "InputProps" "Input", t "InputLabelProps" "InputLabel", t "TooltipProps" "Tooltip"
    , t "TransitionActionsProps" "TransitionActions"
    , t "SnackbarProps" "Snackbar", noChildren $ t "SnackbarContentProps" "SnackbarContent"
    ]
  where
    noChildren = rmap _ {canHaveChildren = false}
    t p name = Tuple p {moduleName:"MaterialUI", name, require: Just {pkg: "@material-ui/core/" <> name, prop:"default"}, canHaveChildren: true}
    -- t2 p name req = t3 p name req name
    -- t3 p name req prop = Tuple p {moduleName:"MaterialUI", name, require: Just {pkg: "@material-ui/core/"<>req, prop}, canHaveChildren: true}
    trans name = t (name <> "Props") name

main :: Effect Unit
main = do
  let toReact (p@PropsI {name}) = tsToPsProps p <$> M.lookup name included
      allInts = filterMap toReact $ readInterfaces "../../material-ui/tsconfig.json" (flip M.member included)
      writeProps baseDir r@(ReactProps {details:{name}}) = do
        let {purs,js} = moduleSource r
        FS.writeTextFile E.UTF8 (baseDir <> name <> ".purs") purs
        maybe (pure unit) (FS.writeTextFile E.UTF8 (baseDir <> name <> ".js")) js

  traverse_ (writeProps "../src/MaterialUI/") allInts
