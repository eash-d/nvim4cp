-- auto set packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- auto sync plugins  
vim.cmd ([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  }
}

  use "christoomey/vim-tmux-navigator"  -- ctrl + h,i,j,k, for move from split windows

  -- use "nvim-treesitter/nvim-treesitter"

  -- use {
  --   "williamboman/mason.nvim",
  --   "williamboman/mason-lspconfig.nvim",
  --   "neovim/nvim-lspconfig"
  -- }

-- 自动补全
  -- use "hrsh7th/nvim-cmp"
  -- use "hrsh7th/cmp-nvim-lsp"
  -- use "saadparwaiz1/cmp_luasnip"
  -- use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }
  -- use "hrsh7th/cmp-path" -- 文件路径
  -- use "hrsh7th/cmp-buffer"

  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',  -- 文件检索
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "NLKNguyen/papercolor-theme" -- theme
--  use { "ellisonleao/gruvbox.nvim" }
--   use {
--     "phha/zenburn.nvim",
--     config = function() require("zenburn").setup() end
-- }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

