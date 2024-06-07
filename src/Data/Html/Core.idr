module Data.Html.Core

public export
record Attribute where
  constructor MkAttribute
  name : String
  value : String

mutual
  public export
  record Element where
    constructor MkElement
    tag : String
    attributes : List Attribute
    content : Html

  public export
  data Html : Type where
    MkHtmlPlain : String -> Html
    MkHtmlElement : Element -> Html
    MkHtmlList : List Html -> Html
