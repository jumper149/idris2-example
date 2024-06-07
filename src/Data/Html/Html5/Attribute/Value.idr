module Data.Html.Html5.Attribute.Value

import Data.Html.Core

public export
isEnum : String -> List String -> Bool
isEnum string = \case
  [] => False
  enum :: enums => string == enum || isEnum string enums

public export
data IsEnum : String -> List String -> Type where
  PrfIsEnum : isEnum value enumeration = True -> IsEnum value enumeration
