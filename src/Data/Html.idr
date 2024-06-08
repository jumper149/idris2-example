module Data.Html

import Data.Html.Core
import Data.Html.Html5.Attribute
import Data.Html.Html5.Attribute.Value
import Data.Html.Html5.Element
import Data.Html.Html5.Element.Attribute

someStrings : List String
someStrings = ["a", "b", "c"]

public export
f : Html
f = html []
  [ div [ id "firstDiv" ] [plain "aksjhd"]
  , div [ id "secondDiv", dir "rtl" ] [plain "aksjhd"]
  , div [ id "thirdDiv" ] [plain "aksjhd"]
  , div [] (map (\x => div [id x] [plain "abc"]) someStrings)
  ]
