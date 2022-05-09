-- Keymappings

local map = vim.keymap.set

vim.g.mapleader = ' '
map('n', '§', ':wincmd q<CR>')
map('n', 'ä', '<C-d>', { remap = true })
map('n', 'å', '<C-u>', { remap = true })
map('n', 'ö', ':w<CR>')
map('v', 'ö', '<ESC>')
map('i', 'ö', '<ESC>')
map('n', '<BSLASH>', ':silent noh<bar>echo<CR>', { desc = 'Remove search highlight' })
map('n', '<TAB>', ':BufferLineCycleNext<CR>', { desc = 'Switch buffers' })
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { desc = 'Switch buffers' })
map('n', '<C-s>', ':w<CR>', { desc = 'Save with Ctrl + s' })
map('i', '<C-SPACE>', '<C-x><C-o>', { desc = 'Run omnifunc, mostly used for autocomplete' })
map('n', 'Y', 'y$', { desc = 'Yank to end of line' })
-- map('n', '<C-a>', ':ToggleTerm<CR>')
map('t', '<C-a>', '<c-\\><c-n>', { desc = 'Exit terminal mode' })

-- Leader --
------------
map('n', '<leader><leader>', ':')
-- map('n', '<leader>G', ':G<CR>', { desc = 'Fugitive' })

-- Copy/paste
-- map('n', '<leader>y', '"+y', { desc = 'Copy to system clippboard' })
-- map('v', '<leader>y', '"+y', { desc = 'Copy to system clippboard' })
-- map('n', '<leader>p', '"+p', { desc = 'Paste from system clippboard' })
-- map('v', '<leader>p', '"+p', { desc = 'Paste from system clippboard' })

-- Local list
-- map('n', '<leader>lo', ':lopen<CR>')
-- map('n', '<leader>lc', ':lclose<CR>')
-- map('n', '<C-n>', ':lnext<CR>')
-- map('n', '<C-p>', ':lprev<CR>')

-- Quickfix list
-- map('n', "<leader>co", ":copen<CR>")
-- map('n', "<leader>cc", ":cclose<CR>")
-- map('n', "<C-N>", ":cnext<CR>")
-- map('n', "<C-P>", ":cprev<CR>")
-- " use the same commands to step items for quickfix, location list and diff
-- map('n', '<leader>n', ']c \\|:silent! lnext \\| silent! cnext <cr>')
-- map('n', '<leader>p', '[c \\|:silent! lprevious \\| silent! cprevious <cr>')

-- diagnostic
-- map('n', "<leader>d", '<Cmd>lua vim.diagnostic.open_float(0, {scope = "line"})<CR>', { desc = 'Show line diagnostics' })
-- map('n', "<leader>D", "<Cmd>lua vim.diagnostic.setloclist()<CR>", { desc = 'Open local diagnostics in local list'})
-- map('n', "<leader><A-d>", "<Cmd>lua vim.diagnostic.setqflist()<CR>", { desc = 'Open all project diagnostics in quickfix list'})

-- File browsers
-- map('n', '<leader>r', ':RnvimrToggle<CR>', { desc = 'Ranger' })
