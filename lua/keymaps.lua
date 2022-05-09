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
