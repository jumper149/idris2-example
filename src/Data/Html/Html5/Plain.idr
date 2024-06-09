module Data.Html.Html5.Plain

import Data.Html.Core

public export
plain : String -> Html
plain = MkHtmlPlain

public export
escaped : String -> Html
escaped = MkHtmlPlain . pack . escape . unpack
 where
  escape : List Char -> List Char
  escape = \case
    '<' :: xs => unpack "&lt;" ++ escape xs
    '>' :: xs => unpack "&gt;" ++ escape xs
    '&' :: xs => unpack "&amp;" ++ escape xs
    '"' :: xs => unpack "&quot;" ++ escape xs
    '\'' :: xs => unpack "&#39;" ++ escape xs
    x :: xs => x :: escape xs
    Nil => Nil
