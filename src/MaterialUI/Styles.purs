module MaterialUI.Styles where

import MaterialUI.Theme (Theme)
import React (ReactClass)

foreign import withStyles :: forall a b props. (Theme -> b) -> ReactClass {classes::a|props} -> ReactClass {|props}

foreign import mediaQuery :: forall a b c. String -> a -> b -> c
