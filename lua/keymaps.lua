-- Keymappings

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.mapleader = ' '
vim.keymap.set('n', '<tab>', ':')
vim.keymap.set('n', '<bslash>', ':silent noh<bar>echo<CR>') -- remove search highlight
vim.keymap.set('n', '<leader>r', ':RnvimrToggle<CR>') -- ranger
vim.keymap.set('n', '<leader>t', ':NvimTreeOpen<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope git_files<CR>')
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>v', ':e $MYVIMRC<CR>')
vim.keymap.set('n', '<C-p>', ':bp<CR>')
vim.keymap.set('n', '<C-n>', ':bn<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>s', '<C-w>v<C-w>l :bp<CR>') -- split window, with current buffer
vim.keymap.set('n', '§', ':wincmd q<CR>')
vim.keymap.set('n', 'ä', '<C-d>')
vim.keymap.set('n', 'å', '<C-u>')
vim.keymap.set('n', 'ö', ':w<CR>')
vim.keymap.set('v', 'ö', '<ESC>')
vim.keymap.set('i', 'ö', '<ESC>')

-- Run omnifunc, mostly used for autocomplete
-- inoremap("<C-SPACE>", "<C-x><C-o>")

-- Save with Ctrl + S
-- nnoremap("<C-s>", ":w<CR>")

-- -- Close buffer
-- nnoremap("<C-c>", ":q<CR>")

-- -- Switch buffers (needs nvim-bufferline)
-- nnoremap("<TAB>", ":BufferLineCycleNext<CR>")
-- nnoremap("<S-TAB>", ":BufferLineCyclePrev<CR>")

-- -- Splits
-- nnoremap("<leader>ws", ":split<CR>")
-- nnoremap("<leader>vs", ":vsplit<CR>")

-- -- Popualte substitution
-- nnoremap("<leader>s", ":s//g<Left><Left>")
-- nnoremap("<leader>S", ":%s//g<Left><Left>")
-- nnoremap("<leader><C-s>", ":%s//gc<Left><Left><Left>")

-- vnoremap("<leader>s", ":s//g<Left><Left>")
-- vnoremap("<leader><A-s>", ":%s//g<Left><Left>")
-- vnoremap("<leader>S", ":%s//gc<Left><Left><Left>")

-- -- Delete buffer
-- nnoremap("<A-w>", ":bd<CR>")

-- -- Yank to end of line
-- nnoremap("Y", "y$")

-- -- Copy to system clippboard
-- nnoremap("<leader>y", '"+y')
-- vnoremap("<leader>y", '"+y')

-- -- Paste from system clippboard
-- nnoremap("<leader>p", '"+p')
-- vnoremap("<leader>p", '"+p')

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

-- -- Fugitive
-- nnoremap("<leader>G", ":G<CR>")

-- -- Show line diagnostics
-- nnoremap("<leader>d", '<Cmd>lua vim.diagnostic.open_float(0, {scope = "line"})<CR>')

-- -- Open local diagnostics in local list
-- nnoremap("<leader>D", "<Cmd>lua vim.diagnostic.setloclist()<CR>")

-- -- Open all project diagnostics in quickfix list
-- nnoremap("<leader><A-d>", "<Cmd>lua vim.diagnostic.setqflist()<CR>")
