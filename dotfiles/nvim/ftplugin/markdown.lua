local wr = require("karu.writers")
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)

vim.keymap.set('n', '=', wr.increase_header)
vim.keymap.set('n', '<tab>', wr.next_link)
vim.keymap.set('n', '<S-tab>', wr.prev_link)
vim.keymap.set('n', '+', wr.decrease_header)
vim.keymap.set('n','<localleader>tl', wr.toggle_ltex_ls)
vim.keymap.set('v', '<C-space>', wr.create_link)
vim.keymap.set('n', '<C-space>', 'ciw[]<esc>Pf]a()<esc>i')

-- PLUGIN VIM-MARKDOWN
vim.api.nvim_set_var("vim_markdown_folding_disabled" , 1)
vim.api.nvim_set_var("tex_conceal" , 'abdmgs')
vim.api.nvim_set_var("vim_markdown_conceal" , 2)
vim.api.nvim_set_var("vim_markdown_math" , 1)
