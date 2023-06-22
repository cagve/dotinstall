-- Two common LuaSnip abbreviations
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local c = ls.choice_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local t = ls.text_node

local snippet = {
	s({trig="bf", name="Bold font"}, {t"**", i(1), t"**"}),
	s({trig="preamble"}, fmt( [[
		--- 
		title: {}
		author: {}
		date: {}
		category: {}
		---
		]], { i(1), i(2), f(function () return os.date("%d/%b/%Y") end), i(0) }
		)
	),
}

return snippet
