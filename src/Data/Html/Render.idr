module Data.Html.Render

import Data.Html.Core

-- TODO: Escape name and value.
renderAttribute : Attribute -> String
renderAttribute attribute = attribute.name ++ "=\"" ++ attribute.value ++ "\""

private
renderAttributes : List Attribute -> String
renderAttributes = \case
  [] => ""
  a :: as => " " ++ renderAttribute a ++ renderAttributes as

public export
render : Html -> String
render = \case
  MkHtmlPlain string => string
  MkHtmlElement element => concat
    [ "<"
    , element.tag
    , renderAttributes element.attributes
    , ">"
    , render element.content
    , "</"
    , element.tag
    ,">"
    ]
  MkHtmlList list => concat (map render list)
