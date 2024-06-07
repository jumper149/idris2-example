module Data.Html

import Data.Html.Core
import Data.Html.Html5.Attribute
import Data.Html.Html5.Attribute.Value
import Data.Html.Html5.Element

public export
f : Html
f = html []
  [ div [ id "firstDiv" ] [plain "aksjhd"]
  , div [ id "secondDiv", dir "rtl" ] [plain "aksjhd"]
  , div [ id "thirdDiv" ] [plain "aksjhd"]
  ]
