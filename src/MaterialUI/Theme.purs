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
    }
  },
  typography :: {
    fontFamily :: String
  }
}
