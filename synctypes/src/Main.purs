module Main where

import Prelude

import Data.Array (mapMaybe)
import Data.Maybe (Maybe(..), fromMaybe, isJust)
import Data.String (Pattern(..), indexOf)
import Data.String as String
import Data.Traversable (traverse_)
import Effect (Effect)
import ReadTS (TSType(..), readInterfaceTypes)
import ReadTS.Convert (startsWithAny) 
import ReadTS.Convert.React (ComponentModule, ComponentType(..), convertProperty, 
  detectComponentType, propertiesToModule, reactComponentMapper, reactRefMapping, writeComponent, writeEnumModule)

overrideType :: String -> Maybe ComponentType
overrideType = case _ of 
  "ListItemSecondaryAction" -> Just PropsAndChildren
  _ -> Nothing

convertComponent :: TSType -> Maybe ComponentModule
convertComponent = case _ of
  Interface {name,members} | Just componentName <- String.stripSuffix (Pattern "Props") name -> 
    let 
      doConvert = convertProperty $ reactComponentMapper reactRefMapping
      propertyConvert p | startsWithAny ["aria"] p.name = Nothing 
      propertyConvert p = Just $ doConvert p
      props = mapMaybe propertyConvert members 
      detected = detectComponentType props
      componentType = fromMaybe detected.componentType $ overrideType componentName 
      classRequire = "@material-ui/core/" <> componentName
      moduleName = "ReactMUI." <> componentName
      componentModule = propertiesToModule {classRequire,moduleName,classProperty:"default"} 
                              componentName detected.props componentType
    in Just componentModule 
  _ -> Nothing

includedInterface :: String -> Boolean 
includedInterface = case _ of 
  "Props" -> false
  "ComponentProps" -> false 
  "ComponentsPropsList" -> false
  "SwitchBaseProps" -> false
  o -> isJust $ indexOf (Pattern "Props") o


main :: Effect Unit  
main = do 
  t <- readInterfaceTypes "muiconfig.json" includedInterface
  let components = mapMaybe convertComponent t
  traverse_ (writeComponent "../src/gen") components
  writeEnumModule "../src/gen" "ReactMUI.Enums" components
