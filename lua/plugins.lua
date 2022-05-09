-- Plugin definition and loading

-- Boostrap Packer
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone','https://github.com/wbthomason/packer.nvim', install_path})
end

-- Rerun PackerCompile when saving this file
vim.api.nvim_create_autocmd('BufWritePost', { command = 'source <afile> | PackerCompile',
																							group = packer_group,
																							pattern = {'plugins.lua' } })
-- Source lua config files on save
vim.api.nvim_create_autocmd('BufWritePost', { command = 'source <afile>',
																							group = config_group,
																							pattern = { 'commands.lua', 'keymaps.lua', 'options.lua', 'which-key.lua', 'utils.lua' } })

-- Initialize pluggins
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'					-- Manage packer
  use 'tpope/vim-commentary'						-- gc in visual select to comment out/in code
  use 'kevinhwang91/rnvimr' 						-- Ranger in vim
  use 'christoomey/vim-tmux-navigator'  -- Navigation between tmux and vim windows
  use 'tpope/vim-fugitive' 							-- Git commands
  use 'ntpeters/vim-better-whitespace'  -- Show extra whitespaces, and :StripWhitespace
  use "moll/vim-bbye"										-- Bdelete, maintain splits when removing buffer
  use 'altercation/vim-colors-solarized'
  use 'overcache/neosolarized'

  use { 'ahmedkhalf/project.nvim', config = function() require('plugins.project') end }
	use { 'akinsho/toggleterm.nvim', tag = 'v1.*', config = function() require('toggleterm').setup() end}
	use { 'karb94/neoscroll.nvim', config = function() require('plugins.neoscroll') end }
  use { 'hoob3rt/lualine.nvim', config = function() require('plugins.lualine') end }
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
	use { 'folke/which-key.nvim', config = function() require('plugins.which-key') end }

  use { 'lewis6991/gitsigns.nvim', -- Show git changes on the left
    requires = {'nvim-lua/plenary.nvim'},
    config = function() require('plugins.gitsigns') end
  }

  -- LSP
  -- use 'williamboman/nvim-lsp-installer'  -- Helper for installing most language servers
	--require("nvim-lsp-installer").setup {} -- Need to be called before lsp-config setup
  use { 'neovim/nvim-lspconfig', config = function() require('plugins.lspconfig') end }
  use "L3MON4D3/LuaSnip"
  use "jose-elias-alvarez/null-ls.nvim" -- For formatters and linters
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lua",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function() require('plugins.cmp') end,
  }

  use {
    'akinsho/bufferline.nvim', -- Show buffers as tabs
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins.bufferline') end,
    event = 'BufWinEnter',
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() require('plugins.treesitter') end,
    run = ':TSUpdate'
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    config = function() require('plugins.telescope') end,
  }

  use { 'nvim-telescope/telescope-fzf-native.nvim', run ='make' }

  use {
    'mhinz/vim-startify',	-- Start screen
    config = function()
      local path = vim.fn.stdpath('config')..'/lua/plugins/startify.vim'
      vim.cmd('source '..path)
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
-- vim: sw=2 ts=2 sts=2 nowrap
