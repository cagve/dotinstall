local wr = require("karu.writers")
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, { virtual_text = false }
)

vim.keymap.set('n', '=', wr.increase_header)
vim.keymap.set('n', '+', wr.decrease_header)
vim.keymap.set('n','<localleader>tl', wr.toggle_ltex_ls)
vim.keymap.set('v', '<C-space>', wr.create_link)
vim.keymap.set('n', '<C-space>', 'ciw[]<esc>Pf]a()<esc>i')
