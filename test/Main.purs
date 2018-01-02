module Main where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (log)
import DOM (DOM)
import DOM.HTML (window)
import DOM.HTML.Types (htmlDocumentToDocument)
import DOM.HTML.Window (document)
import DOM.Node.NonElementParentNode (getElementById)
import DOM.Node.Types (Element, ElementId(..), documentToNonElementParentNode)
import Data.Maybe (fromJust)
import MaterialUI.AppBar (appBar')
import MaterialUI.Button (button')
import MaterialUI.Paper (paper')
import MaterialUI.PropTypes (colors, handle, textStyles, ut)
import MaterialUI.Table (table')
import MaterialUI.TableBody (tableBody')
import MaterialUI.TableCell (tableCell')
import MaterialUI.TableHead (tableHead')
import MaterialUI.TableRow (tableRow')
import MaterialUI.Toolbar (toolbar')
import MaterialUI.Typography (typography')
import Partial.Unsafe (unsafePartial)
import React (ReactElement)
import React.DOM as D
import ReactDOM (render)
import Unsafe.Coerce (unsafeCoerce)

main :: forall eff. Eff (dom :: DOM | eff) Unit
main = void (elm' >>= render ui)
  where
  ui :: ReactElement
  ui = D.div' [
        appBar' {position:ut "static"} [
            toolbar' {} [ typography' {"type": textStyles.display3, color:colors.inherit} [ D.text "EQUELLA"] ]
        ],
        paper' {elevation:4.0} [
          typography' {"type": textStyles.display1, color:colors.accent} [ D.text "Latest Release"],
          table' {} [
            tableHead' {} [
              tableRow' {} [
                tableCell' {} [D.text "Type"],
                tableCell' {} [D.text "Issue #"],
                tableCell' {} [D.text "Description"]
              ]
            ],
            tableBody' {} [
              tableRow' {} [
                tableCell' {} [D.text "Bug"],
                tableCell' {} [D.text "545"],
                tableCell' {} [D.text "Some sweet bugs"]
              ]
            ]
          ],
          button' {onClick: handle $ (log <<< unsafeCoerce), raised:true, color:colors.primary } [D.text "dsf"]
        ]
    ]

  elm' :: Eff (dom :: DOM | eff) Element
  elm' = do
    win <- window
    doc <- document win
    elm <- getElementById (ElementId "example") (documentToNonElementParentNode (htmlDocumentToDocument doc))
    pure $ unsafePartial (fromJust elm)
