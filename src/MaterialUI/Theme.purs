module MaterialUI.Theme where

type Theme = {
  spacing :: {
    unit :: Int
  },
  breakpoints :: {
    up :: String -> String
  },
  mixins :: {
    toolbar :: String
  },
  palette :: {
    common :: {
      white :: String
    },
    text :: {
      secondary :: String
    }
  },
  typography :: {
    fontFamily :: String,
    pxToRem :: Int -> String
  }
}
