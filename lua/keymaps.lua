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
map('n', '<C-a>', ':ToggleWindowTerminal<CR>')
map('t', '<C-a>', '<c-\\><c-n>', { desc = 'Exit terminal mode' })

-- Leader
map('n', '<leader><leader>', ':', { desc = 'Ranger' })
map('n', '<leader>r', ':RnvimrToggle<CR>', { desc = 'Ranger' })
map('n', '<leader>t', ':NvimTreeToggle<CR>')
map('n', '<leader>fg', ':Telescope git_files')
map('n', '<leader>fG', ':Telescope git_files show_untracked=false recurse_submodules=true use_git_root=true<CR>')
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>no', ':No<CR>', { desc = 'Clear left sidebar' })
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>s', '<C-w>v<C-w>l :bp<CR>', { desc = 'Split window with current buffer' })
map('n', '<leader>s', ':s//g<Left><Left>', { desc = 'Populate substitution' })
map('n', '<leader>S', ':%s//g<Left><Left>', { desc = 'Populate substitution' })
map('n', '<leader><C-s>', ':%s//gc<Left><Left><Left>', { desc = 'Populate substitution' })
map('v', '<leader>s', ':s//g<Left><Left>', { desc = 'Populate substitution' })
map('v', '<leader><A-s>', ':%s//g<Left><Left>', { desc = 'Populate substitution' })
map('v', '<leader>S', ':%s//gc<Left><Left><Left>', { desc = 'Populate substitution' })
map('n', '<leader>y', '"+y', { desc = 'Copy to system clippboard' })
map('v', '<leader>y', '"+y', { desc = 'Copy to system clippboard' })
map('n', '<leader>p', '"+p', { desc = 'Paste from system clippboard' })
map('v', '<leader>p', '"+p', { desc = 'Paste from system clippboard' })
map('n', '<leader>G', ':G<CR>', { desc = 'Fugitive' })

-- -- Local list
map('n', '<leader>lo', ':lopen<CR>')
map('n', '<leader>lc', ':lclose<CR>')
map('n', '<C-n>', ':lnext<CR>')
map('n', '<C-p>', ':lprev<CR>')

-- -- Quickfix list
map('n', "<leader>co", ":copen<CR>")
map('n', "<leader>cc", ":cclose<CR>")
map('n', "<C-N>", ":cnext<CR>")
map('n', "<C-P>", ":cprev<CR>")

map('n', "<leader>d", '<Cmd>lua vim.diagnostic.open_float(0, {scope = "line"})<CR>', { desc = 'Show line diagnostics' })

-- -- Open local diagnostics in local list
map('n', "<leader>D", "<Cmd>lua vim.diagnostic.setloclist()<CR>")

-- -- Open all project diagnostics in quickfix list
map('n', "<leader><A-d>", "<Cmd>lua vim.diagnostic.setqflist()<CR>")

-- " use the same commands to step items for quickfix, location list and diff
-- map('n', '<leader>n', ']c \\|:silent! lnext \\| silent! cnext <cr>')
-- map('n', '<leader>p', '[c \\|:silent! lprevious \\| silent! cprevious <cr>')
