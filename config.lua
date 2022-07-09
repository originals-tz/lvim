lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "duskfox"
lvim.leader = "space"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = true
lvim.builtin.nvimtree.adaptive_size = true

require 'nvim-treesitter.install'.compilers = { "clang++" }
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "cmake",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

-- Code Actions
local actions = require "telescope.actions"
lvim.builtin.telescope.defaults.mappings.i["<CR>"] = actions.select_default

lvim.plugins = {
  { "hrsh7th/vim-vsnip" },
  { "hrsh7th/cmp-vsnip" },
  { "junnplus/nvim-lsp-setup" },
  { "p00f/clangd_extensions.nvim" },
  { "phaazon/hop.nvim" },
  { "luochen1990/rainbow" },
  { "lukas-reineke/cmp-rg" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "folke/trouble.nvim" },
  { "ray-x/lsp_signature.nvim" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "vim-scripts/DoxygenToolkit.vim" },
  { "Badhi/nvim-treesitter-cpp-tools" },
  { "cdelledonne/vim-cmake" },
  { "kdheepak/lazygit.nvim" },
  { "EdenEast/nightfox.nvim" },
}

require "user.clang"
require "user.hop"
require "user.keymap"
