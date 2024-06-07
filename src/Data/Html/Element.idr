module Data.Html.Element

import Data.Html.Core

public export
plain : String -> Html
plain = MkHtmlPlain

public export
node : String -> List Attribute -> List Html -> Html
node tag attributes htmls = MkHtmlElement (MkElement { tag, attributes, content = MkHtmlList htmls })

public export
html : List Attribute -> List Html -> Html
html = node "html"

public export
div : List Attribute -> List Html -> Html
div = node "div"

public export
hasHtmlTag : Html -> Lazy Bool
hasHtmlTag = \case
  MkHtmlPlain _ => False
  MkHtmlElement element => element.tag == "html" || hasHtmlTag element.content
  MkHtmlList list => or (map hasHtmlTag list)

public export
data HasNoHtmlTag : List Html -> Type where
  PrfHasNoHtmlTag : hasHtmlTag (MkHtmlList content) = False -> HasNoHtmlTag content

public export
htmlSafe : (attributes : List Attribute) -> (content : List Html) -> {auto 0 prf : (HasNoHtmlTag content)} -> Html
htmlSafe attributes content {prf} = html attributes content
