module Data.Html.Html5.Element.Check

import Data.Html.Core

public export
nameIsOneOf : Attribute -> List String -> Bool
nameIsOneOf attribute = \case
  [] => False
  a :: as => attribute.name == a || nameIsOneOf attribute as

-- TODO: Allow `data-*`
public export
IsGlobalAttribute : Attribute -> Bool
IsGlobalAttribute attribute = nameIsOneOf attribute
  [ "accesskey"
  , "autocapitalize"
  , "autofocus"
  , "class"
  , "contenteditable"
  , "dir"
  , "draggable"
  , "enterkeyhint"
  , "exportparts"
  , "hidden"
  , "id"
  , "inert"
  , "inputmode"
  , "is"
  , "itemid"
  , "itemprop"
  , "itemref"
  , "itemscope"
  , "itemtype"
  , "lang"
  , "nonce"
  , "part"
  , "popover"
  , "slot"
  , "spellcheck"
  , "style"
  , "tabindex"
  , "title"
  , "translate"
  , "virtualkeyboardpolicy"
  ]

public export
IsAttributeForHtml : Attribute -> Bool
IsAttributeForHtml attribute = or
  [ IsGlobalAttribute attribute
  , nameIsOneOf attribute [ "version", "xmlns" ]
  ]

public export
satisfying : (Attribute -> Bool) -> List Attribute -> Bool
satisfying f = \case
  [] => True
  attribute :: attributes => f attribute && satisfying f attributes

public export
data Satisfying : (predicate : Attribute -> Bool) -> (attributes : List Attribute) -> Type where
  PrfSatisfying : satisfying predicate attributes = True -> Satisfying predicate attributes
