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
import MaterialUI.AppBar (appBar, position, static)
import MaterialUI.Button (button, raised)
import MaterialUI.ButtonBase (onClick)
import MaterialUI.Color (inherit, primary)
import MaterialUI.Paper (elevation, paper)
import MaterialUI.PropTypes (handle)
import MaterialUI.Properties (color, variant)
import MaterialUI.Table (table_)
import MaterialUI.TableBody (tableBody_)
import MaterialUI.TableCell (tableCell_)
import MaterialUI.TableHead (tableHead_)
import MaterialUI.TableRow (tableRow_)
import MaterialUI.TextStyle (display1, display3)
import MaterialUI.Toolbar (toolbar_)
import MaterialUI.Typography (typography)
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
        appBar [position static] [
            toolbar_ [ typography [variant display3, color inherit] [ D.text "EQUELLA"] ]
        ],
        paper [elevation 4] [
          typography [ variant display1, color primary] [ D.text "Latest Release"],
          table_ [
            tableHead_ [
              tableRow_ [
                tableCell_ [D.text "Type"],
                tableCell_ [D.text "Issue #"],
                tableCell_ [D.text "Description"]
              ]
            ],
            tableBody_  [
              tableRow_  [
                tableCell_ [D.text "Bug"],
                tableCell_ [D.text "545"],
                tableCell_ [D.text "Some sweet bugs"]
              ]
            ]
          ],
          button [ onClick $ handle $ (log <<< unsafeCoerce), variant raised, color primary ] [D.text "dsf"]
        ]
    ]

  elm' :: Eff (dom :: DOM | eff) Element
  elm' = do
    win <- window
    doc <- document win
    elm <- getElementById (ElementId "example") (documentToNonElementParentNode (htmlDocumentToDocument doc))
    pure $ unsafePartial (fromJust elm)
