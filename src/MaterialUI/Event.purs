module MaterialUI.Event where

import DOM.HTML.Types (HTMLElement)

type Event = {
  currentTarget :: HTMLElement,
  target :: {
    value :: String
  }
}
