module MainPickers where 

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
included = M.fromFoldable [noChildren $ t "DatePickerProps" "DatePicker",
t3 "MuiPickersUtilsProviderProps" "MuiPickersUtilsProvider" "default" "utils/MuiPickersUtilsProvider"]
  where
    noChildren = rmap _ {canHaveChildren = false}
    t p name = t3 p name "default" name
    t3 p name prop req = Tuple p {moduleName:"MaterialUIPicker", name, require: Just {pkg: "material-ui-pickers/"<>req, prop}, canHaveChildren: true}

main :: Effect Unit
main = do
  let toReact (p@PropsI {name}) = tsToPsProps p <$> M.lookup name included
      allInts = filterMap toReact $ readInterfaces "/home/jolz/git/material-ui-pickers/lib/tsconfig.json" (flip M.member included)
      writeProps baseDir r@(ReactProps {details:{name}}) = do
        let {purs,js} = moduleSource r
        FS.writeTextFile E.UTF8 (baseDir <> name <> ".purs") purs
        maybe (pure unit) (FS.writeTextFile E.UTF8 (baseDir <> name <> ".js")) js

  traverse_ (writeProps "/home/jolz/equella/Equella/Source/Plugins/Core/com.equella.core/js/src/MaterialUIPicker/") allInts
