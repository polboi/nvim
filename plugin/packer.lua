vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

use 'ThePrimeagen/vim-be-good'

use 'wadackel/vim-dogrun'

use 'm4xshen/autoclose.nvim'

use 'nvim-lua/plenary.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})


use 'yorickpeterse/nvim-window'

use 'nvim-treesitter/playground'

use 'ThePrimeagen/harpoon'

use 'mbbill/undotree'

use 'tpope/vim-fugitive'

use 'Lenovsky/nuake'

use 'tpope/vim-surround'

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'rafamadriz/friendly-snippets'},
  }
}

use 'williamboman/mason.nvim'
use {
    "williamboman/mason-lspconfig.nvim",
}

use {
  "amrbashir/nvim-docs-view",
  opt = true,
  cmd = { "DocsViewToggle" },
  config = function()
    require("docs-view").setup {
      position = "right",
      width = 60,
    }
  end
}

end)
