module Data.Html.Example

import Data.Html

someStrings : List String
someStrings = ["a", "b", "c"]

public export
f : Html
f = html [ id "asd" ]
  [ div [ id "firstDiv" ] [escaped "<p><p><p>"]
  , div [ id "secondDiv", dir "rtl" ] [plain "aksjhd"]
  , div [ id "thirdDiv" ] [plain "aksjhd"]
  , div [] (map (\x => div [id x] [plain "abc"]) someStrings)
  ]
