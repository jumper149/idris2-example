module Data.Html.Render

import Data.Html.Core

private
escapeAttributeValue : List Char -> List Char
escapeAttributeValue = \case
  '"' :: xs => unpack "&quot;" ++ escapeAttributeValue xs
  x :: xs => x :: escapeAttributeValue xs
  Nil => Nil

private
escapedAttributeValue : String -> String
escapedAttributeValue = pack . escapeAttributeValue . unpack

private
renderAttribute : Attribute -> String
renderAttribute attribute = concat
  [ attribute.name
  , "=\""
  , escapedAttributeValue attribute.value
  , "\""
  ]

private
renderAttributes : List Attribute -> String
renderAttributes = \case
  [] => ""
  a :: as => " " ++ renderAttribute a ++ renderAttributes as

export
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
