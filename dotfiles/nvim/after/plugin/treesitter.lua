require'nvim-treesitter.configs'.setup {
  highlight = {
	  enable = true,
	  disable = {"latex", "markdown"},
	  additional_vim_regex_highlighting = false,
  },
  locals = {
	  enable=true
  }
}
