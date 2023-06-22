" \mathfrak characters
syn match mathFrak 'a' contained conceal cchar=𝔞
syn match mathFrak 'b' contained conceal cchar=𝔟
syn match mathFrak 'c' contained conceal cchar=𝔠
syn match mathFrak 'd' contained conceal cchar=𝔡
syn match mathFrak 'e' contained conceal cchar=𝔢
syn match mathFrak 'f' contained conceal cchar=𝔣
syn match mathFrak 'g' contained conceal cchar=𝔤
syn match mathFrak 'h' contained conceal cchar=𝔥
syn match mathFrak 'i' contained conceal cchar=𝔦
syn match mathFrak 'j' contained conceal cchar=𝔧
syn match mathFrak 'k' contained conceal cchar=𝔨
syn match mathFrak 'l' contained conceal cchar=𝔩
syn match mathFrak 'm' contained conceal cchar=𝔪
syn match mathFrak 'n' contained conceal cchar=𝔫
syn match mathFrak 'o' contained conceal cchar=𝔬
syn match mathFrak 'p' contained conceal cchar=𝔭
syn match mathFrak 'q' contained conceal cchar=𝔮
syn match mathFrak 'r' contained conceal cchar=𝔯
syn match mathFrak 's' contained conceal cchar=𝔰
syn match mathFrak 't' contained conceal cchar=𝔱
syn match mathFrak 'u' contained conceal cchar=𝔲
syn match mathFrak 'v' contained conceal cchar=𝔳
syn match mathFrak 'w' contained conceal cchar=𝔴
syn match mathFrak 'x' contained conceal cchar=𝔵
syn match mathFrak 'y' contained conceal cchar=𝔶
syn match mathFrak 'z' contained conceal cchar=𝔷
syn match mathFrak 'A' contained conceal cchar=𝔄
syn match mathFrak 'B' contained conceal cchar=𝔅
syn match mathFrak 'C' contained conceal cchar=ℭ
syn match mathFrak 'D' contained conceal cchar=𝔇
syn match mathFrak 'E' contained conceal cchar=𝔈
syn match mathFrak 'F' contained conceal cchar=𝔉
syn match mathFrak 'G' contained conceal cchar=𝔊
syn match mathFrak 'H' contained conceal cchar=ℌ
syn match mathFrak 'I' contained conceal cchar=ℑ
syn match mathFrak 'J' contained conceal cchar=𝔍
syn match mathFrak 'K' contained conceal cchar=𝔎
syn match mathFrak 'L' contained conceal cchar=𝔏
syn match mathFrak 'M' contained conceal cchar=𝔐
syn match mathFrak 'N' contained conceal cchar=𝔑
syn match mathFrak 'O' contained conceal cchar=𝔒
syn match mathFrak 'P' contained conceal cchar=𝔓
syn match mathFrak 'Q' contained conceal cchar=𝔔
syn match mathFrak 'R' contained conceal cchar=ℜ
syn match mathFrak 'S' contained conceal cchar=𝔖
syn match mathFrak 'T' contained conceal cchar=𝔗
syn match mathFrak 'U' contained conceal cchar=𝔘
syn match mathFrak 'V' contained conceal cchar=𝔙
syn match mathFrak 'W' contained conceal cchar=𝔚
syn match mathFrak 'X' contained conceal cchar=𝔛
syn match mathFrak 'Y' contained conceal cchar=𝔜
syn match mathFrak 'Z' contained conceal cchar=ℨ


syntax match texMathCmdStyle "\\mathfrak{" contained conceal
syntax match texMathCmdStyle  "}"  contained conceal 
syn region texMathGroup start="\\mathfrak{" end="}" concealends contains=mathFrak,texMathCmdStyle keepend conceal

" \mathcal characters
syn match texMathSymbol '\\cA' contained conceal cchar=𝓐
syn match texMathSymbol '\\cB' contained conceal cchar=𝓑
syn match texMathSymbol '\\cC' contained conceal cchar=𝓒
syn match texMathSymbol '\\cD' contained conceal cchar=𝓓
syn match texMathSymbol '\\cE' contained conceal cchar=𝓔
syn match texMathSymbol '\\cF' contained conceal cchar=𝓕
syn match texMathSymbol '\\cG' contained conceal cchar=𝓖
syn match texMathSymbol '\\cH' contained conceal cchar=𝓗
syn match texMathSymbol '\\cI' contained conceal cchar=𝓘
syn match texMathSymbol '\\cJ' contained conceal cchar=𝓙
syn match texMathSymbol '\\cK' contained conceal cchar=𝓚
syn match texMathSymbol '\\cL' contained conceal cchar=𝓛
syn match texMathSymbol '\\cM' contained conceal cchar=𝓜
syn match texMathSymbol '\\cN' contained conceal cchar=𝓝
syn match texMathSymbol '\\cO' contained conceal cchar=𝓞
syn match texMathSymbol '\\cP' contained conceal cchar=𝓟
syn match texMathSymbol '\\cQ' contained conceal cchar=𝓠
syn match texMathSymbol '\\cR' contained conceal cchar=𝓡
syn match texMathSymbol '\\cS' contained conceal cchar=𝓢
syn match texMathSymbol '\\cT' contained conceal cchar=𝓣
syn match texMathSymbol '\\cU' contained conceal cchar=𝓤
syn match texMathSymbol '\\cV' contained conceal cchar=𝓥
syn match texMathSymbol '\\cW' contained conceal cchar=𝓦
syn match texMathSymbol '\\cX' contained conceal cchar=𝓧
syn match texMathSymbol '\\cY' contained conceal cchar=𝓨
syn match texMathSymbol '\\cZ' contained conceal cchar=𝓩


" REGION OF MATHCAL
syn match mathCal 'A' contained conceal cchar=𝓐
syn match mathCal 'B' contained conceal cchar=𝓑
syn match mathCal 'C' contained conceal cchar=𝓒
syn match mathCal 'D' contained conceal cchar=𝓓
syn match mathCal 'E' contained conceal cchar=𝓔
syn match mathCal 'F' contained conceal cchar=𝓕
syn match mathCal 'G' contained conceal cchar=𝓖
syn match mathCal 'H' contained conceal cchar=𝓗
syn match mathCal 'I' contained conceal cchar=𝓘
syn match mathCal 'J' contained conceal cchar=𝓙
syn match mathCal 'K' contained conceal cchar=𝓚
syn match mathCal 'L' contained conceal cchar=𝓛
syn match mathCal 'M' contained conceal cchar=𝓜
syn match mathCal 'N' contained conceal cchar=𝓝
syn match mathCal 'O' contained conceal cchar=𝓞
syn match mathCal 'P' contained conceal cchar=𝓟
syn match mathCal 'Q' contained conceal cchar=𝓠
syn match mathCal 'R' contained conceal cchar=𝓡
syn match mathCal 'S' contained conceal cchar=𝓢
syn match mathCal 'T' contained conceal cchar=𝓣
syn match mathCal 'U' contained conceal cchar=𝓤
syn match mathCal 'V' contained conceal cchar=𝓥
syn match mathCal 'W' contained conceal cchar=𝓦
syn match mathCal 'X' contained conceal cchar=𝓧
syn match mathCal 'Y' contained conceal cchar=𝓨
syn match mathCal 'Z' contained conceal cchar=𝓩

syntax match texMathCmdStyle "\\mathcal{" contained conceal
syntax match texMathCmdStyle  "}"  contained conceal 
syn region texMathGroup start="\\mathcal{" end="}" concealends contains=mathCal,texMathCmdStyle keepend conceal



syn match mathCal 'A' contained conceal cchar=𝓐
syn match mathCal 'B' contained conceal cchar=𝓑
syn match mathCal 'C' contained conceal cchar=𝓒
syn match mathCal 'D' contained conceal cchar=𝓓
syn match mathCal 'E' contained conceal cchar=𝓔
syn match mathCal 'F' contained conceal cchar=𝓕
syn match mathCal 'G' contained conceal cchar=𝓖
syn match mathCal 'H' contained conceal cchar=𝓗
syn match mathCal 'I' contained conceal cchar=𝓘
syn match mathCal 'J' contained conceal cchar=𝓙
syn match mathCal 'K' contained conceal cchar=𝓚
syn match mathCal 'L' contained conceal cchar=𝓛
syn match mathCal 'M' contained conceal cchar=𝓜
syn match mathCal 'N' contained conceal cchar=𝓝
syn match mathCal 'O' contained conceal cchar=𝓞
syn match mathCal 'P' contained conceal cchar=𝓟
syn match mathCal 'Q' contained conceal cchar=𝓠
syn match mathCal 'R' contained conceal cchar=𝓡
syn match mathCal 'S' contained conceal cchar=𝓢
syn match mathCal 'T' contained conceal cchar=𝓣
syn match mathCal 'U' contained conceal cchar=𝓤
syn match mathCal 'V' contained conceal cchar=𝓥
syn match mathCal 'W' contained conceal cchar=𝓦
syn match mathCal 'X' contained conceal cchar=𝓧
syn match mathCal 'Y' contained conceal cchar=𝓨
syn match mathCal 'Z' contained conceal cchar=𝓩

syntax match texMathCmdStyle "\\mathcal{" contained conceal
syntax match texMathCmdStyle  "}"  contained conceal 
syn region texMathGroup start="\\mathcal{" end="}" concealends contains=mathCal,texMathCmdStyle keepend conceal



syn region texBoldMathText  matchgroup=texStatement start='\\\%(mathbf\|bm\|symbf\|pmb\){' end='}' concealends contains=@texMathZoneGroup containedin=texMathMatcher
syn cluster texMathZoneGroup add=texBoldMathText

syn region texBoldItalStyle matchgroup=texTypeStyle start="\\emph\s*{" end="}" concealends contains=@texItalGroup
syn region texItalStyle  matchgroup=texTypeStyle start="\\emph\s*{" end="}" concealends contains=@texItalGroup
syn region texMatcher matchgroup=texTypeStyle start="\\\%(underline\|uline\){" end="}" concealends contains=@texItalGroup

hi texBoldMathText cterm=bold gui=bold
hi texUnderStyle cterm=underline gui=underline
match texUnderStyle /\\\%(underline\|uline\){\zs\(.\([^\\]}\)\@<!\)\+\ze}/

