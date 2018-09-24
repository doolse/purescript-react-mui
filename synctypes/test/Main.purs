module Test.Main where

import Prelude

import Data.Foldable (find, findMap)
import Data.Maybe (Maybe(..))
import Data.Tuple (fst)
import Debug.Trace (traceM)
import Effect (Effect)
import ReadTS (TSType(..), readInterfaceTypes)
import ReadTS.Convert (optionalType, simplified)

justCheckProps :: String -> Boolean
justCheckProps = case _ of 
  "CheckboxProps" -> true 
  _ -> false

interfaceMembers = case _ of 
  Interface {members} -> Just members
  _ -> Nothing

isOnChange = case _ of 
  {name:"onChange"} -> true 
  _ -> false

main :: Effect Unit  
main = do 
  t <- readInterfaceTypes "muiconfig.json" justCheckProps
  let onChange = do 
        members <- findMap interfaceMembers t 
        find isOnChange members
  traceM $ map (_.t >>> optionalType >>> fst >>> simplified) onChange
