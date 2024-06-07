module Data.Html.Html5.Attribute

import Data.Html.Core

public export
attribute : String -> String -> Attribute
attribute name value = MkAttribute { name, value }



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
align : String -> Attribute
align = attribute "align"

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
async : String -> Attribute
async = attribute "async"

public export
autocapitalize : String -> Attribute
autocapitalize = attribute "autocapitalize"

public export
autocomplete : String -> Attribute
autocomplete = attribute "autocomplete"

public export
autoplay : String -> Attribute
autoplay = attribute "autoplay"

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
capture : String -> Attribute
capture = attribute "capture"

public export
charset : String -> Attribute
charset = attribute "charset"

public export
checked : String -> Attribute
checked = attribute "checked"

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
contenteditable : String -> Attribute
contenteditable = attribute "contenteditable"

public export
controls : String -> Attribute
controls = attribute "controls"

public export
coords : String -> Attribute
coords = attribute "coords"

public export
crossorigin : String -> Attribute
crossorigin = attribute "crossorigin"

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
defer : String -> Attribute
defer = attribute "defer"

public export
dir : String -> Attribute
dir = attribute "dir"

public export
dirname : String -> Attribute
dirname = attribute "dirname"

public export
disabled : String -> Attribute
disabled = attribute "disabled"

public export
download : String -> Attribute
download = attribute "download"

public export
draggable : String -> Attribute
draggable = attribute "draggable"

public export
enctype : String -> Attribute
enctype = attribute "enctype"

-- TODO: Experimental.
public export
enterkeyhint : String -> Attribute
enterkeyhint = attribute "enterkeyhint"

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
hidden : String -> Attribute
hidden = attribute "hidden"

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
httpEquiv : String -> Attribute
httpEquiv = attribute "http-equiv"

public export
id : String -> Attribute
id = attribute "id"

public export
integrity : String -> Attribute
integrity = attribute "integrity"

%deprecate
public export
intrinsicsize : String -> Attribute
intrinsicsize = attribute "intrinsicsize"

public export
inputmode : String -> Attribute
inputmode = attribute "inputmode"

public export
ismap : String -> Attribute
ismap = attribute "ismap"

public export
itemprop : String -> Attribute
itemprop = attribute "itemprop"

public export
kind : String -> Attribute
kind = attribute "kind"

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
loading : String -> Attribute
loading = attribute "loading"

public export
list : String -> Attribute
list = attribute "list"

public export
loop : String -> Attribute
loop = attribute "loop"

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
method : String -> Attribute
method = attribute "method"

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
novalidate : String -> Attribute
novalidate = attribute "novalidate"

public export
open_ : String -> Attribute
open_ = attribute "open"

public export
optimum : String -> Attribute
optimum = attribute "optimum"

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
playsinline : String -> Attribute
playsinline = attribute "playsinline"

public export
poster : String -> Attribute
poster = attribute "poster"

public export
preload : String -> Attribute
preload = attribute "preload"

public export
readonly : String -> Attribute
readonly = attribute "readonly"

public export
referrerpolicy : String -> Attribute
referrerpolicy = attribute "referrerpolicy"

public export
rel : String -> Attribute
rel = attribute "rel"

public export
required : String -> Attribute
required = attribute "required"

public export
reversed : String -> Attribute
reversed = attribute "reversed"

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
scope : String -> Attribute
scope = attribute "scope"

%deprecate
public export
scoped : String -> Attribute
scoped = attribute "scoped"

public export
selected : String -> Attribute
selected = attribute "selected"

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
spellcheck : String -> Attribute
spellcheck = attribute "spellcheck"

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
translate : String -> Attribute
translate = attribute "translate"

public export
type : String -> Attribute
type = attribute "type"

public export
usemap : String -> Attribute
usemap = attribute "usemap"

public export
value : String -> Attribute
value = attribute "value"

public export
width : String -> Attribute
width = attribute "width"

public export
wrap : String -> Attribute
wrap = attribute "wrap"
