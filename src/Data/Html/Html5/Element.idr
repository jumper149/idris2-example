module Data.Html.Html5.Element

import Data.Html.Core
import Data.Html.Html5.Element.Check

public export
node : (tag : String) -> (attributes : List Attribute) -> (content : List Html) -> Html
node tag attributes htmls = MkHtmlElement (MkElement { tag, attributes, content = MkHtmlList htmls })



-- Main root

public export
html :
  (attributes : List Attribute) ->
  (content : List Html) ->
  {auto 0 prf : Satisfying IsAttributeForHtml attributes} ->
  Html
html attributes content = node "html" attributes content

-- Document metadata

public export
base : List Attribute -> List Html -> Html
base = node "base"

public export
head : List Attribute -> List Html -> Html
head = node "head"

public export
link : List Attribute -> List Html -> Html
link = node "link"

public export
meta : List Attribute -> List Html -> Html
meta = node "meta"

public export
style : List Attribute -> List Html -> Html
style = node "style"

public export
title : List Attribute -> List Html -> Html
title = node "title"

-- Sectioning root

public export
body : List Attribute -> List Html -> Html
body = node "body"

-- Content sectioning

public export
address : List Attribute -> List Html -> Html
address = node "address"

public export
article : List Attribute -> List Html -> Html
article = node "article"

public export
aside : List Attribute -> List Html -> Html
aside = node "aside"

public export
footer : List Attribute -> List Html -> Html
footer = node "footer"

public export
header : List Attribute -> List Html -> Html
header = node "header"

public export
h1 : List Attribute -> List Html -> Html
h1 = node "h1"

public export
h2 : List Attribute -> List Html -> Html
h2 = node "h2"

public export
h3 : List Attribute -> List Html -> Html
h3 = node "h3"

public export
h4 : List Attribute -> List Html -> Html
h4 = node "h4"

public export
h5 : List Attribute -> List Html -> Html
h5 = node "h5"

public export
h6 : List Attribute -> List Html -> Html
h6 = node "h6"

public export
hgroup : List Attribute -> List Html -> Html
hgroup = node "hgroup"

public export
main : List Attribute -> List Html -> Html
main = node "main"

public export
nav : List Attribute -> List Html -> Html
nav = node "nav"

public export
section : List Attribute -> List Html -> Html
section = node "section"

public export
search : List Attribute -> List Html -> Html
search = node "search"

-- Sectioning root

public export
blockquote : List Attribute -> List Html -> Html
blockquote = node "blockquote"

public export
dd : List Attribute -> List Html -> Html
dd = node "dd"

public export
div : List Attribute -> List Html -> Html
div = node "div"

public export
dl : List Attribute -> List Html -> Html
dl = node "dl"

public export
dt : List Attribute -> List Html -> Html
dt = node "dt"

public export
figcaption : List Attribute -> List Html -> Html
figcaption = node "figcaption"

public export
figure : List Attribute -> List Html -> Html
figure = node "figure"

public export
hr : List Attribute -> List Html -> Html
hr = node "hr"

public export
li : List Attribute -> List Html -> Html
li = node "li"

public export
menu : List Attribute -> List Html -> Html
menu = node "menu"

public export
ol : List Attribute -> List Html -> Html
ol = node "ol"

public export
p : List Attribute -> List Html -> Html
p = node "p"

public export
pre : List Attribute -> List Html -> Html
pre = node "pre"

public export
ul : List Attribute -> List Html -> Html
ul = node "ul"

-- Inline text semantics

public export
a : List Attribute -> List Html -> Html
a = node "a"

public export
abbr : List Attribute -> List Html -> Html
abbr = node "abbr"

public export
b : List Attribute -> List Html -> Html
b = node "b"

public export
bdi : List Attribute -> List Html -> Html
bdi = node "bdi"

public export
bdo : List Attribute -> List Html -> Html
bdo = node "bdo"

public export
br : List Attribute -> List Html -> Html
br = node "br"

public export
cite : List Attribute -> List Html -> Html
cite = node "cite"

public export
code : List Attribute -> List Html -> Html
code = node "code"

public export
data_ : List Attribute -> List Html -> Html
data_ = node "data"

public export
dfn : List Attribute -> List Html -> Html
dfn = node "dfn"

public export
em : List Attribute -> List Html -> Html
em = node "em"

public export
i : List Attribute -> List Html -> Html
i = node "i"

public export
kbd : List Attribute -> List Html -> Html
kbd = node "kbd"

public export
mark : List Attribute -> List Html -> Html
mark = node "mark"

public export
q : List Attribute -> List Html -> Html
q = node "q"

public export
rp : List Attribute -> List Html -> Html
rp = node "rp"

public export
rt : List Attribute -> List Html -> Html
rt = node "rt"

public export
ruby : List Attribute -> List Html -> Html
ruby = node "ruby"

public export
s : List Attribute -> List Html -> Html
s = node "s"

public export
samp : List Attribute -> List Html -> Html
samp = node "samp"

public export
small : List Attribute -> List Html -> Html
small = node "small"

public export
span : List Attribute -> List Html -> Html
span = node "span"

public export
strong : List Attribute -> List Html -> Html
strong = node "strong"

public export
sub : List Attribute -> List Html -> Html
sub = node "sub"

public export
sup : List Attribute -> List Html -> Html
sup = node "sup"

public export
time : List Attribute -> List Html -> Html
time = node "time"

public export
u : List Attribute -> List Html -> Html
u = node "u"

public export
var : List Attribute -> List Html -> Html
var = node "var"

public export
wbr : List Attribute -> List Html -> Html
wbr = node "wbr"

-- Image and multimedia

public export
area : List Attribute -> List Html -> Html
area = node "area"

public export
audio : List Attribute -> List Html -> Html
audio = node "audio"

public export
img : List Attribute -> List Html -> Html
img = node "img"

public export
track : List Attribute -> List Html -> Html
track = node "track"

public export
video : List Attribute -> List Html -> Html
video = node "video"

-- Embedded content

public export
embed : List Attribute -> List Html -> Html
embed = node "embed"

public export
iframe : List Attribute -> List Html -> Html
iframe = node "iframe"

public export
object : List Attribute -> List Html -> Html
object = node "object"

public export
picture : List Attribute -> List Html -> Html
picture = node "picture"

public export
portal : List Attribute -> List Html -> Html
portal = node "portal"

public export
source : List Attribute -> List Html -> Html
source = node "source"

-- SVG and MathML

public export
svg : List Attribute -> List Html -> Html
svg = node "svg"

public export
math : List Attribute -> List Html -> Html
math = node "math"

-- Scripting

public export
canvas : List Attribute -> List Html -> Html
canvas = node "canvas"

public export
noscript : List Attribute -> List Html -> Html
noscript = node "noscript"

public export
script : List Attribute -> List Html -> Html
script = node "script"

-- Demarcating edits

public export
del : List Attribute -> List Html -> Html
del = node "del"

public export
ins : List Attribute -> List Html -> Html
ins = node "ins"

-- Table content

public export
caption : List Attribute -> List Html -> Html
caption = node "caption"

public export
col : List Attribute -> List Html -> Html
col = node "col"

public export
colgroup : List Attribute -> List Html -> Html
colgroup = node "colgroup"

public export
table : List Attribute -> List Html -> Html
table = node "table"

public export
tbody : List Attribute -> List Html -> Html
tbody = node "tbody"

public export
td : List Attribute -> List Html -> Html
td = node "td"

public export
tfoot : List Attribute -> List Html -> Html
tfoot = node "tfoot"

public export
th : List Attribute -> List Html -> Html
th = node "th"

public export
thead : List Attribute -> List Html -> Html
thead = node "thead"

public export
tr : List Attribute -> List Html -> Html
tr = node "tr"

-- Forms

public export
button : List Attribute -> List Html -> Html
button = node "button"

public export
datalist : List Attribute -> List Html -> Html
datalist = node "datalist"

public export
fieldset : List Attribute -> List Html -> Html
fieldset = node "fieldset"

public export
form : List Attribute -> List Html -> Html
form = node "form"

public export
input : List Attribute -> List Html -> Html
input = node "input"

public export
label : List Attribute -> List Html -> Html
label = node "label"

public export
legend : List Attribute -> List Html -> Html
legend = node "legend"

public export
meter : List Attribute -> List Html -> Html
meter = node "meter"

public export
optgroup : List Attribute -> List Html -> Html
optgroup = node "optgroup"

public export
option : List Attribute -> List Html -> Html
option = node "option"

public export
output : List Attribute -> List Html -> Html
output = node "output"

public export
progress : List Attribute -> List Html -> Html
progress = node "progress"

public export
select : List Attribute -> List Html -> Html
select = node "select"

public export
textarea : List Attribute -> List Html -> Html
textarea = node "textarea"

-- Interactive elements

public export
details : List Attribute -> List Html -> Html
details = node "details"

public export
dialog : List Attribute -> List Html -> Html
dialog = node "dialog"

public export
summary : List Attribute -> List Html -> Html
summary = node "summary"

-- Web Components

public export
slot : List Attribute -> List Html -> Html
slot = node "slot"

public export
template : List Attribute -> List Html -> Html
template = node "template"

-- Obsolete and deprecated elements

public export
acronym : List Attribute -> List Html -> Html
acronym = node "acronym"

public export
big : List Attribute -> List Html -> Html
big = node "big"

public export
center : List Attribute -> List Html -> Html
center = node "center"

public export
content : List Attribute -> List Html -> Html
content = node "content"

public export
dir : List Attribute -> List Html -> Html
dir = node "dir"

public export
font : List Attribute -> List Html -> Html
font = node "font"

public export
frame : List Attribute -> List Html -> Html
frame = node "frame"

public export
frameset : List Attribute -> List Html -> Html
frameset = node "frameset"

public export
image : List Attribute -> List Html -> Html
image = node "image"

public export
marquee : List Attribute -> List Html -> Html
marquee = node "marquee"

public export
menuitem : List Attribute -> List Html -> Html
menuitem = node "menuitem"

public export
nobr : List Attribute -> List Html -> Html
nobr = node "nobr"

public export
noembed : List Attribute -> List Html -> Html
noembed = node "noembed"

public export
noframes : List Attribute -> List Html -> Html
noframes = node "noframes"

public export
param : List Attribute -> List Html -> Html
param = node "param"

public export
plaintext : List Attribute -> List Html -> Html
plaintext = node "plaintext"

public export
rb : List Attribute -> List Html -> Html
rb = node "rb"

public export
rtc : List Attribute -> List Html -> Html
rtc = node "rtc"

public export
shadow : List Attribute -> List Html -> Html
shadow = node "shadow"

public export
strike : List Attribute -> List Html -> Html
strike = node "strike"

public export
tt : List Attribute -> List Html -> Html
tt = node "tt"

public export
xmp : List Attribute -> List Html -> Html
xmp = node "xmp"
