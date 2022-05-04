-- Plugin definition and loading

-- Boostrap Packer
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone','https://github.com/wbthomason/packer.nvim', install_path})
end

-- Rerun PackerCompile everytime pluggins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Initialize pluggins
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'					-- Manage packer
  use 'tpope/vim-commentary'						-- gc in visual select to comment out/in code
  use 'kevinhwang91/rnvimr' 						-- Ranger in vim
  use 'christoomey/vim-tmux-navigator'  -- Navigation between tmux and vim windows
  use 'tpope/vim-fugitive' 							-- Git commands
  use 'ntpeters/vim-better-whitespace'  -- Show extra whitespaces, and :StripWhitespace
	use 'caenrique/nvim-toggle-terminal'
  use 'altercation/vim-colors-solarized'
  use 'overcache/neosolarized'

  use ({
    'lewis6991/gitsigns.nvim', 					-- Show git changes on the left
    requires = {'nvim-lua/plenary.nvim'},
    config = function() require('plugins.gitsigns') end
  })

  -- LSP server
  use({
    'neovim/nvim-lspconfig',
    config = function() require('plugins.lspconfig') end
  })
  use 'williamboman/nvim-lsp-installer'  -- Helper for installing most language servers
  use "L3MON4D3/LuaSnip"  -- Snippet engine
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function() require('plugins.cmp') end,
  })

  use({
    'akinsho/bufferline.nvim', -- Show buffers as tabs
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.bufferline') end,
    event = 'BufWinEnter',
  })

  use({
    'hoob3rt/lualine.nvim',
    config = function() require('plugins.lualine') end,
  })

  use({
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.nvimtree') end,  -- Must add this manually
  })

  use({
    'nvim-treesitter/nvim-treesitter',
    config = function() require('plugins.treesitter') end,
    run = ':TSUpdate'
  })

  use({
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    config = function() require('plugins.telescope') end,
  })

  use({'nvim-telescope/telescope-fzf-native.nvim', run ='make'})

  use({
    'mhinz/vim-startify',
    config = function()
      local path = vim.fn.stdpath('config')..'/lua/plugins/startify.vim'
      vim.cmd('source '..path)
    end
  })

  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- vim: sw=2 ts=2 sts=2
