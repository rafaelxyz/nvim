-- Keymappings

local map = vim.keymap.set

vim.g.mapleader = ' '
map('n', '§', ':wincmd q<CR>')
map('n', 'ä', '<C-d>', { remap = true })
map('n', 'å', '<C-u>', { remap = true })
map('n', 'ö', ':w<CR>')
map('v', 'ö', '<ESC>')
map('i', 'ö', '<ESC>')
map('n', '<BSLASH>', ':silent noh<bar>echo<CR>', {desc = 'Remove search highlight'})
map('n', '<TAB>', ':BufferLineCycleNext<CR>', {desc = 'Switch buffers'})
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', {desc = 'Switch buffers'})
map('n', '<C-s>', ':w<CR>', {desc = 'Save with Ctrl + s'})
map('i', '<C-SPACE>', '<C-x><C-o>', {desc = 'Run omnifunc, mostly used for autocomplete'})
map('n', 'Y', 'y$', {desc = 'Yank to end of line'})
map('n', '<A-a>', ':ToggleWindowTerminal<CR>')
map('t', '<A-a>', '<c-\\><c-n>', {desc ='Exit terminal mode'})

-- Leader
map('n', '<leader>r', ':RnvimrToggle<CR>', {desc = 'Ranger'})
map('n', '<leader>t', ':NvimTreeToggle<CR>')
map('n', '<leader>fg', ':Telescope git_files<CR>')
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>no', ':No<CR>', {desc = 'Clear left sidebar'})
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>s', '<C-w>v<C-w>l :bp<CR>', {desc = 'Split window with current buffer'})
map('n', '<leader>s', ':s//g<Left><Left>', {desc = 'Populate substitution'})
map('n', '<leader>S', ':%s//g<Left><Left>', {desc = 'Populate substitution'})
map('n', '<leader><C-s>', ':%s//gc<Left><Left><Left>', {desc = 'Populate substitution'})
map('v', '<leader>s', ':s//g<Left><Left>', {desc = 'Populate substitution'})
map('v', '<leader><A-s>', ':%s//g<Left><Left>', {desc = 'Populate substitution'})
map('v', '<leader>S', ':%s//gc<Left><Left><Left>', {desc = 'Populate substitution'})
map('n', '<leader>y', '"+y', {desc = 'Copy to system clippboard'})
map('v', '<leader>y', '"+y', {desc = 'Copy to system clippboard'})
map('n', '<leader>p', '"+p', {desc = 'Paste from system clippboard'})
map('v', '<leader>p', '"+p', {desc = 'Paste from system clippboard'})
map('n', '<leader>G', ':G<CR>', {desc = 'Fugitive'})

-- -- Local list
-- nnoremap("<leader>lo", ":lopen<CR>")
-- nnoremap("<leader>lc", ":lclose<CR>")
-- nnoremap("<C-n>", ":lnext<CR>")
-- nnoremap("<C-p>", ":lprev<CR>")

-- -- Quickfix list
-- nnoremap("<leader>co", ":copen<CR>")
-- nnoremap("<leader>cc", ":cclose<CR>")
-- nnoremap("<C-N>", ":cnext<CR>")
-- nnoremap("<C-P>", ":cprev<CR>")

-- map('n', "<leader>d", '<Cmd>lua vim.diagnostic.open_float(0, {scope = "line"})<CR>', {desc = 'Show line diagnostics'})

-- -- Open local diagnostics in local list
-- nnoremap("<leader>D", "<Cmd>lua vim.diagnostic.setloclist()<CR>")

-- -- Open all project diagnostics in quickfix list
-- nnoremap("<leader><A-d>", "<Cmd>lua vim.diagnostic.setqflist()<CR>")

-- " use the same commands to step items for quickfix, location list and diff
-- nmap <leader>n ]c \|:silent! lnext \| silent! cnext <cr>
-- nmap <leader>p [c \|:silent! lprevious \| silent! cprevious <cr>
