-- Define commands

-- Swap folder
vim.cmd('command! ListSwap split | enew | r !ls -l ~/.local/share/nvim/swap')
vim.cmd('command! CleanSwap !rm -rf ~/.local/share/nvim/swap/')

-- Create ctags
vim.cmd('command! MakeCTags !ctags -R --exclude=@.ctagsignore .')

-- Clean up left sidebar
vim.cmd('command! No set nonumber! | Gitsigns toggle_signs')

-- Remember last line position
vim.api.nvim_exec([[ au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]], false)
