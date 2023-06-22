local wr = require('karu.writers')
local function toogle_quickfix()
	local state = vim.api.nvim_get_var('vimtex_quickfix_enabled')
	if state==1 then
		vim.api.nvim_set_var('vimtex_quickfix_enabled', 0)
		vim.cmd "VimtexReload"
		print("Quicfix disabled")
	else
		vim.api.nvim_set_var('vimtex_quickfix_enabled', 1)
		vim.cmd "VimtexReload"
		print("Quicfix enabled")
	end
end

vim.keymap.set('n','<C-t>', '<plug>(vimtex-toc-toggle)')
vim.keymap.set('n','<C-p>', '<plug>(vimtex-view)')
vim.keymap.set('n','<localleader>le', 'vae<plug>(vimtex-compile-selected)')
vim.keymap.set('n','<localleader>lp', 'vap<plug>(vimtex-compile-selected)')
vim.keymap.set('n','<localleader>lt', '<plug>(vimtex-errors)')
vim.keymap.set('n','<localleader>qf', toogle_quickfix )
vim.keymap.set('n','dsm', 'ds$')
vim.keymap.set('v','<localleader>i', 'c\\textit{<Esc>pa}<Esc>')
vim.keymap.set('v','<localleader>b', 'c\\textbf{<Esc>pa}<Esc>')

-- DISABLE VIMTEX LSP COMMENTS ON LINE
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)

vim.cmd.colorscheme("default_tex")	
vim.api.nvim_set_var('vimtex_view_method', 'zathura')


require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "*.aux",
      "*.pdf",
      "*.bst",
	  "*.blg",
	  "*.fdb_latexmk",
	  "*.fls",
	  "*.log",
	  "*.out",
	  "*.spl",
	  "*.synctex.gz",
	  "*.thm"
    }
  }
}

vim.keymap.set('n','<localleader>tl', wr.toggle_ltex_ls)
