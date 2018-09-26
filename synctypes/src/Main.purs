module Main where

import Prelude

import Data.Array (mapMaybe)
import Data.Maybe (Maybe(..), isJust)
import Data.Set as Set
import Data.String (Pattern(..), indexOf)
import Data.String as String
import Data.Traversable (traverse_)
import Effect (Effect)
import ReadTS (TSType(..), readInterfaceTypes)
import ReadTS.CommonPS (numberType, stringType)
import ReadTS.Convert (startsWithAny, unionType)
import ReadTS.Convert.React (ComponentModule, Property, PropertyType(..), convertProperty, detectComponentType, propertiesToModule, reactComponentMapper, reactRefMapping, writeComponent, writeEnumModule)

keyProperty :: Property
keyProperty = {name:"key", propType: Optional, t: unionType [stringType, numberType], stringEnums: Set.empty }

commonOverride :: Set.Set String 
commonOverride = Set.fromFoldable ["onClick", "onChange", "onClose", "onDelete", "aria-label"]

convertComponent :: TSType -> Maybe ComponentModule
convertComponent = case _ of
  Interface {name,members} | Just componentName <- String.stripSuffix (Pattern "Props") name -> 
    let  
      doConvert = reactComponentMapper reactRefMapping
      -- -- propertyConvert p | startsWithAny ["aria"] p.name = Nothing 
      propertyConvert p = let converted = convertProperty doConvert p 
          in case converted.name, converted.propType of 
          n, Optional | startsWithAny ["aria", "on"] n && (not $ Set.member n commonOverride) -> Just $ converted {propType = Extended}
          _, _ -> Just converted

      props = [keyProperty] <> (mapMaybe propertyConvert members)
      detected = detectComponentType props
      componentType = detected.componentType
      classRequire = "@material-ui/core/" <> componentName
      moduleName = "MaterialUI." <> componentName
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
  writeEnumModule "../src/gen" "MaterialUI.Enums" components
