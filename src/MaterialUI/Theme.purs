module MaterialUI.Theme where

type PaletteIntention = {
  light :: String,
  main :: String,
  dark :: String,
  contrastText :: String
}

type ActionTypes = {
  active:: String,
  hover :: String,
  selected :: String,
  disabled :: String,
  disabledBackground :: String
}

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
      black :: String,
      white :: String
    },
    text :: {
      primary :: String,
      secondary :: String,
      disabled :: String,
      hint :: String
    }, 
    primary :: PaletteIntention,
    secondary :: PaletteIntention,
    error :: PaletteIntention,
    background :: {
      pape :: String,
      default :: String
    },
    divider :: String,
    action :: ActionTypes
  },
  typography :: {
    fontFamily :: String,
    pxToRem :: Int -> String
  }
}
