local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- ctrl+c = esc (maybe not needed with better-escape)
map("i", "<C-c>", "<Esc><cr>", default_opts)


-- Move lines up and down
map("n", "<A-j>", ":m .+1<CR>==", default_opts)
map("n", "<A-k>", ":m .-2<CR>==", default_opts)
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", default_opts)
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", default_opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", default_opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", default_opts)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", default_opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", default_opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", default_opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", default_opts)

-- Lsp
map("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", default_opts)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", default_opts)
map("n", "gD", "<cmd>lua vim.lsp.buf.implementation()<CR>", default_opts)
map("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", default_opts)
map("n", "ge", "<cmd>lua vim.diagnostic.open_float(nil,{ focusable = false })<CR>", default_opts)
map("n", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", default_opts)
map("n", "<c-o>", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", default_opts)
--autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()

-- VScode specific
