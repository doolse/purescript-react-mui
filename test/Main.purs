module Main where

import Prelude

import Data.Maybe (fromJust)
import Debug.Trace (traceM)
import Effect (Effect)
import Effect.Uncurried (mkEffectFn1)
import MaterialUI.AppBar (appBar)
import MaterialUI.Button (button)
import MaterialUI.Enums (display1, display3, inherit, primary, raised, static)
import MaterialUI.Paper (paper)
import MaterialUI.Table (table_)
import MaterialUI.TableBody (tableBody_)
import MaterialUI.TableCell (tableCell, tableCell_)
import MaterialUI.TableHead (tableHead_)
import MaterialUI.TableRow (tableRow_)
import MaterialUI.Toolbar (toolbar_)
import MaterialUI.Typography (typography)
import Partial.Unsafe (unsafePartial)
import React (ReactElement)
import React.DOM as D
import ReactDOM (render)
import Web.DOM (Element)
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML (window)
import Web.HTML.HTMLDocument as HTMLDocument
import Web.HTML.Window (document)

main :: Effect Unit
main = void (elm' >>= render ui)
  where
  ui :: ReactElement
  ui = D.div' [
        appBar {position: static} [
            toolbar_ [ typography {variant: display3, color: inherit} [ D.text "EQUELLA"] ]
        ],
        paper {elevation: 4} [
          typography {variant: display1, color: primary} [ D.text "Latest Release"],
          table_ [
            tableHead_ [
              tableRow_ [
                tableCell {key:"type"} [D.text "Type"],
                tableCell {key:"issue"} [D.text "Issue #"],
                tableCell {key:"desc"} [D.text "Description"]
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
          button { onClick: mkEffectFn1 traceM, variant: raised, color: primary } [D.text "dsf"]
        ]
    ]

  elm' :: Effect Element
  elm' = do
    win <- window
    doc <- document win
    elm <- getElementById "example" $ HTMLDocument.toNonElementParentNode doc
    pure $ unsafePartial (fromJust elm)
