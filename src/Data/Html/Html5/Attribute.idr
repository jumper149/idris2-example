module Data.Html.Html5.Attribute

import Data.Html.Core
import Data.Html.Html5.Attribute.Value

public export
attribute : String -> String -> Attribute
attribute name value = MkAttribute { name, value }

public export
attributeBoolean : String -> Attribute
attributeBoolean name = MkAttribute { name, value = "" }



public export
accept : String -> Attribute
accept = attribute "accept"

public export
acceptCharset : String -> Attribute
acceptCharset = attribute "accept-charset"

public export
accesskey : String -> Attribute
accesskey = attribute "accesskey"

public export
action : String -> Attribute
action = attribute "action"

%deprecate
public export
align :
  (value : String) ->
  {auto 0 prf : IsEnum value ["left", "top", "right", "bottom"]} ->
  Attribute
align value = attribute "align" value

public export
allow : String -> Attribute
allow = attribute "allow"

public export
alt : String -> Attribute
alt = attribute "alt"

public export
as : String -> Attribute
as = attribute "as"

public export
async : Attribute
async = attributeBoolean "async"

public export
autocapitalize :
  (value : String) ->
  {auto 0 prf : IsEnum value ["none", "off", "sentences", "on", "words", "characters"]} ->
  Attribute
autocapitalize value = attribute "autocapitalize" value

public export
autocomplete : String -> Attribute
autocomplete = attribute "autocomplete"

public export
autofocus : String -> Attribute
autofocus = attribute "autofocus"

public export
autoplay : Attribute
autoplay = attributeBoolean "autoplay"

public export
background : String -> Attribute
background = attribute "background"

public export
bgcolor : String -> Attribute
bgcolor = attribute "bgcolor"

public export
border : String -> Attribute
border = attribute "border"

public export
capture :
  (value : String) ->
  {auto 0 prf : IsEnum value ["user", "environment"]} ->
  Attribute
capture value = attribute "capture" value

public export
charset : String -> Attribute
charset = attribute "charset"

public export
checked : Attribute
checked = attributeBoolean "checked"

public export
cite : String -> Attribute
cite = attribute "cite"

public export
class : String -> Attribute
class = attribute "class"

public export
color : String -> Attribute
color = attribute "color"

public export
cols : String -> Attribute
cols = attribute "cols"

public export
colspan : String -> Attribute
colspan = attribute "colspan"

public export
content : String -> Attribute
content = attribute "content"

public export
contenteditable :
  (value : String) ->
  {auto 0 prf : IsEnum value ["true", "", "false", "plaintext-only"]} ->
  Attribute
contenteditable value = attribute "contenteditable" value

public export
controls : Attribute
controls = attributeBoolean "controls"

public export
controlslist : String -> Attribute
controlslist = attribute "controlslist"

public export
coords : String -> Attribute
coords = attribute "coords"

public export
crossorigin :
  (value : String) ->
  {auto 0 prf : IsEnum value ["anonymous", "", "use-credentials"]} ->
  Attribute
crossorigin value = attribute "crossorigin" value

-- TODO: Experimental.
public export
csp : String -> Attribute
csp = attribute "csp"

-- TODO: `data-*` attribute still missing.
public export
data_ : String -> Attribute
data_ = attribute "data"

public export
datetime : String -> Attribute
datetime = attribute "datetime"

public export
decoding : String -> Attribute
decoding = attribute "decoding"

public export
default_ : String -> Attribute
default_ = attribute "default"

public export
defer : Attribute
defer = attributeBoolean "defer"

public export
dir :
  (value : String) ->
  {auto 0 prf : IsEnum value ["ltr", "rtl", "auto"]} ->
  Attribute
dir value = attribute "dir" value

public export
dirname : String -> Attribute
dirname = attribute "dirname"

public export
disabled : Attribute
disabled = attributeBoolean "disabled"

public export
download : String -> Attribute
download = attribute "download"

public export
draggable :
  (value : String) ->
  {auto 0 prf : IsEnum value ["true", "false"]} ->
  Attribute
draggable value = attribute "draggable" value

public export
enctype : String -> Attribute
enctype = attribute "enctype"

-- TODO: Experimental.
public export
enterkeyhint : String -> Attribute
enterkeyhint = attribute "enterkeyhint"

public export
exportparts : String -> Attribute
exportparts = attribute "exportparts"

public export
for : String -> Attribute
for = attribute "for"

public export
form : String -> Attribute
form = attribute "form"

public export
formaction : String -> Attribute
formaction = attribute "formaction"

public export
formenctype : String -> Attribute
formenctype = attribute "formenctype"

public export
formmethod : String -> Attribute
formmethod = attribute "formmethod"

public export
formnovalidate : String -> Attribute
formnovalidate = attribute "formnovalidate"

public export
formtarget : String -> Attribute
formtarget = attribute "formtarget"

public export
headers : String -> Attribute
headers = attribute "headers"

public export
height : String -> Attribute
height = attribute "height"

public export
hidden :
  (value : String) ->
  {auto 0 prf : IsEnum value ["", "hidden", "until-found"]} ->
  Attribute
hidden value = attribute "hidden" value

public export
high : String -> Attribute
high = attribute "high"

public export
href : String -> Attribute
href = attribute "href"

public export
hreflang : String -> Attribute
hreflang = attribute "hreflang"

public export
httpEquiv :
  (value : String) ->
  {auto 0 prf : IsEnum value ["content-security-policy", "content-type", "default-style", "x-ua-compatible", "refresh"]} ->
  Attribute
httpEquiv value = attribute "http-equiv" value

public export
id : String -> Attribute
id = attribute "id"

public export
inert : String -> Attribute
inert = attribute "inert"

public export
integrity : String -> Attribute
integrity = attribute "integrity"

%deprecate
public export
intrinsicsize : String -> Attribute
intrinsicsize = attribute "intrinsicsize"

public export
inputmode :
  (value : String) ->
  {auto 0 prf : IsEnum value ["none", "text", "decimal", "numeric", "tel", "search", "email", "url"]} ->
  Attribute
inputmode value = attribute "inputmode" value

public export
is : String -> Attribute
is = attribute "is"

public export
ismap : Attribute
ismap = attributeBoolean "ismap"

public export
itemid : String -> Attribute
itemid = attribute "itemid"

public export
itemprop : String -> Attribute
itemprop = attribute "itemprop"

public export
itemref : String -> Attribute
itemref = attribute "itemref"

public export
itemscope : String -> Attribute
itemscope = attribute "itemscope"

public export
itemtype : String -> Attribute
itemtype = attribute "itemtype"

public export
kind :
  (value : String) ->
  {auto 0 prf : IsEnum value ["subtitles", "captions", "descriptions", "chapters", "metadata"]} ->
  Attribute
kind value = attribute "kind" value

public export
label : String -> Attribute
label = attribute "label"

public export
lang : String -> Attribute
lang = attribute "lang"

%deprecate
public export
language : String -> Attribute
language = attribute "language"

-- TODO: Experimental.
public export
loading :
  (value : String) ->
  {auto 0 prf : IsEnum value ["eager", "lazy"]} ->
  Attribute
loading value = attribute "loading" value

public export
list : String -> Attribute
list = attribute "list"

public export
loop : Attribute
loop = attributeBoolean "loop"

public export
low : String -> Attribute
low = attribute "low"

public export
max : String -> Attribute
max = attribute "max"

public export
maxlength : String -> Attribute
maxlength = attribute "maxlength"

public export
minlength : String -> Attribute
minlength = attribute "minlength"

public export
media : String -> Attribute
media = attribute "media"

public export
method :
  (value : String) ->
  {auto 0 prf : IsEnum value ["post", "get", "dialog"]} ->
  Attribute
method value = attribute "method" value

public export
min : String -> Attribute
min = attribute "min"

public export
multiple : String -> Attribute
multiple = attribute "multiple"

public export
muted : String -> Attribute
muted = attribute "muted"

public export
name : String -> Attribute
name = attribute "name"

public export
nonce : String -> Attribute
nonce = attribute "nonce"

public export
novalidate : Attribute
novalidate = attributeBoolean "novalidate"

public export
open_ : Attribute
open_ = attributeBoolean "open"

public export
optimum : String -> Attribute
optimum = attribute "optimum"

public export
part : String -> Attribute
part = attribute "part"

public export
pattern : String -> Attribute
pattern = attribute "pattern"

public export
ping : String -> Attribute
ping = attribute "ping"

public export
placeholder : String -> Attribute
placeholder = attribute "placeholder"

public export
playsinline : Attribute
playsinline = attributeBoolean "playsinline"

public export
popover : String -> Attribute
popover = attribute "popover"

public export
poster : String -> Attribute
poster = attribute "poster"

public export
preload :
  (value : String) ->
  {auto 0 prf : IsEnum value ["none", "metadata", "auto", ""]} ->
  Attribute
preload value = attribute "preload" value

public export
readonly : Attribute
readonly = attributeBoolean "readonly"

public export
referrerpolicy : String -> Attribute
referrerpolicy = attribute "referrerpolicy"

public export
rel : String -> Attribute
rel = attribute "rel"

public export
required : Attribute
required = attributeBoolean "required"

public export
reversed : Attribute
reversed = attributeBoolean "reversed"

public export
role : String -> Attribute
role = attribute "role"

public export
rows : String -> Attribute
rows = attribute "rows"

public export
rowspan : String -> Attribute
rowspan = attribute "rowspan"

public export
sandbox : String -> Attribute
sandbox = attribute "sandbox"

public export
scope :
  (value : String) ->
  {auto 0 prf : IsEnum value ["none", "metadata", "auto", ""]} ->
  Attribute
scope value = attribute "scope" value

%deprecate
public export
scoped : String -> Attribute
scoped = attribute "scoped"

public export
selected : Attribute
selected = attributeBoolean "selected"

public export
shape : String -> Attribute
shape = attribute "shape"

public export
size : String -> Attribute
size = attribute "size"

public export
sizes : String -> Attribute
sizes = attribute "sizes"

public export
slot : String -> Attribute
slot = attribute "slot"

public export
span : String -> Attribute
span = attribute "span"

public export
spellcheck :
  (value : String) ->
  {auto 0 prf : IsEnum value ["true", "", "false"]} ->
  Attribute
spellcheck value = attribute "spellcheck" value

public export
src : String -> Attribute
src = attribute "src"

public export
srcdoc : String -> Attribute
srcdoc = attribute "srcdoc"

public export
srclang : String -> Attribute
srclang = attribute "srclang"

public export
srcset : String -> Attribute
srcset = attribute "srcset"

public export
start : String -> Attribute
start = attribute "start"

public export
step : String -> Attribute
step = attribute "step"

public export
style : String -> Attribute
style = attribute "style"

%deprecate
public export
summary : String -> Attribute
summary = attribute "summary"

public export
tabindex : String -> Attribute
tabindex = attribute "tabindex"

public export
target : String -> Attribute
target = attribute "target"

public export
title : String -> Attribute
title = attribute "title"

public export
translate :
  (value : String) ->
  {auto 0 prf : IsEnum value ["yes", "", "no"]} ->
  Attribute
translate value = attribute "translate" value

public export
type : String -> Attribute
type = attribute "type"

public export
usemap : String -> Attribute
usemap = attribute "usemap"

public export
value : String -> Attribute
value = attribute "value"

-- TODO: Experimental.
public export
virtualkeyboardpolicy : String -> Attribute
virtualkeyboardpolicy = attribute "virtualkeyboardpolicy"

public export
width : String -> Attribute
width = attribute "width"

public export
wrap :
  (value : String) ->
  {auto 0 prf : IsEnum value ["hard", "soft", "off"]} ->
  Attribute
wrap value = attribute "wrap" value
