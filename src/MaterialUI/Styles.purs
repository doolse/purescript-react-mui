module MaterialUI.Styles where

import React (ReactClass)

foreign import withStyles :: forall a b c props. (c -> b) -> ReactClass {classes::a|props} -> ReactClass {|props}

foreign import mediaQuery :: forall a b c. String -> a -> b -> c
