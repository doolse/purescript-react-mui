module MaterialUI.Colors where

foreign import fade :: String -> Number -> String

type Color = {
  "50":: String,
  "100":: String,
  "200":: String,
  "300":: String,
  "400":: String,
  "500":: String,
  "600":: String,
  "700":: String,
  "800":: String,
  "900":: String,
  "A100":: String,
  "A200":: String,
  "A400":: String,
  "A700":: String
}

foreign import red :: Color

foreign import blue :: Color

foreign import amber :: Color

foreign import blueGrey :: Color

foreign import brown :: Color

foreign import cyan :: Color

foreign import deepOrange :: Color

foreign import deepPurple :: Color

foreign import green :: Color

foreign import grey :: Color

foreign import indigo :: Color

foreign import lightBlue :: Color

foreign import lightGreen :: Color

foreign import lime :: Color

foreign import orange :: Color

foreign import pink :: Color

foreign import purple :: Color

foreign import teal :: Color

foreign import yellow :: Color
