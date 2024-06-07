module Data.Html

import Data.Html.Core
import Data.Html.Element

public export
f : Html
f = html []
  [ div [] [plain "aksjhd"]
  , div [] [plain "aksjhd"]
  ]

public export
g : Html
g = htmlSafe []
  [ div [] [plain "aksjhd"]
  , div []
    [ div [] [plain "a"]
    , plain "b"
    , plain "c"
    ]
  ]

