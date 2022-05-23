-- Plugin definition and loading

-- Boostrap Packer
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
end

-- Rerun PackerCompile when saving this file
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = { 'plugins.lua' }
})

-- Source lua config files on save
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile>',
  group = config_group,
  pattern = { 'commands.lua', 'keymaps.lua', 'options.lua', 'which-key.lua', 'utils.lua' }
})

-- Initialize pluggins
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Manage packer
  use 'kevinhwang91/rnvimr' -- Ranger
  use 'tpope/vim-commentary' -- gc in visual select to comment out/in code
  use 'christoomey/vim-tmux-navigator' -- Navigation between tmux and vim windows
  use 'tpope/vim-fugitive' -- Git commands
  use 'ntpeters/vim-better-whitespace' -- Show extra whitespaces, and :StripWhitespace
  use "moll/vim-bbye" -- Bdelete, maintain splits when removing buffer
  use 'altercation/vim-colors-solarized'
  use 'overcache/neosolarized'

  -- Collection of configurations for the built-in LSP client
  use {
    'neovim/nvim-lspconfig', config = function()
      require'lspconfig'.pyright.setup{}
      require'lspconfig'.clangd.setup{}
      require'lspconfig'.bashls.setup{}
      require'lspconfig'.vimls.setup{}
      require'lspconfig'.dockerls.setup{}
    end,
  }

  use {
    'nvim-lualine/lualine.nvim', config = function()
      require('lualine').setup() end,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  use {
    'lewis6991/gitsigns.nvim', config = function()
      require('gitsigns').setup() end,
    requires = { 'nvim-lua/plenary.nvim' },
  }

  use {
    'nvim-orgmode/orgmode', config = function()
      require('orgmode').setup{} end
  }

  -- Plugins with custom configs

  use {
    'kyazdani42/nvim-tree.lua', config = function()
      require('plugins.nvim-tree') end,
    requires = { 'kyazdani42/nvim-web-devicons' },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
    'akinsho/toggleterm.nvim', config = function()
      require('plugins.toggleterm') end,
     tag = 'v1.*',
  }

  use {
    'ahmedkhalf/project.nvim', config = function()
      require('plugins.project_nvim') end
  }

  use {
    'karb94/neoscroll.nvim', config = function()
      require('plugins.neoscroll') end
  }

  use {
    'folke/which-key.nvim', config = function()
      require('plugins.which-key') end
  }

  use {
    'akinsho/bufferline.nvim', config = function()
      require('plugins.bufferline') end,
    requires = 'kyazdani42/nvim-web-devicons',
    event = 'BufWinEnter',
  }

  use {
    'nvim-treesitter/nvim-treesitter', config = function()
      require('plugins.treesitter') end,
    require('orgmode').setup_ts_grammar(),
    run = ':TSUpdate'
  }

  use {
    'nvim-telescope/telescope.nvim', config = function()
      require('plugins.telescope') end,
    requires = { 'nvim-lua/plenary.nvim' },
  }

  use {
    'mhinz/vim-startify', config = function()
      local path = vim.fn.stdpath('config') .. '/lua/plugins/startify.vim'
      vim.cmd('source ' .. path)
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
-- vim: sw=2 ts=2 sts=2 nowrap
