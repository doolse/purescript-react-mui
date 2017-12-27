module Main where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.HTML (window)
import DOM.HTML.Types (htmlDocumentToDocument)
import DOM.HTML.Window (document)
import DOM.Node.NonElementParentNode (getElementById)
import DOM.Node.Types (Element, ElementId(..), documentToNonElementParentNode)
import Data.Maybe (fromJust)
import MaterialUI.AppBar (appBar')
import MaterialUI.Button (button')
import MaterialUI.PropTypes (colors, textStyles)
import MaterialUI.Toolbar (toolbar')
import MaterialUI.Typography (typography')
import Partial.Unsafe (unsafePartial)
import React (ReactElement)
import React.DOM as D
import ReactDOM (render)

main :: forall eff. Eff (dom :: DOM | eff) Unit
main = void (elm' >>= render ui)
  where
  ui :: ReactElement
  ui = D.div' [
        appBar' {} [
            toolbar' {} [ typography' {"type": textStyles.title, color:colors.inherit} [ D.text "Title"] ]
        ],
        button' {raised:true, color:colors."primary" } [D.text "dsf"]
    ]

  elm' :: Eff (dom :: DOM | eff) Element
  elm' = do
    win <- window
    doc <- document win
    elm <- getElementById (ElementId "example") (documentToNonElementParentNode (htmlDocumentToDocument doc))
    pure $ unsafePartial (fromJust elm)
