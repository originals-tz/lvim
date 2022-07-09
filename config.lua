-- general
lvim.log.level = "warn"
lvim.format_on_save = true
require "user.clang"

lvim.colorscheme = "duskfox"
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false

-- centos7 compilers
require 'nvim-treesitter.install'.compilers = { "clang++" }

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<space>d"] = ":Dox<cr>"
lvim.keys.normal_mode["<space>G"] = ":LazyGit<cr>"
lvim.keys.normal_mode["<C-e>"] = ":NvimTreeFocus<cr>"
lvim.builtin.which_key.mappings["C"] = {
  name = "CMake",
  g = { "<cmd>CMakeGenerate<CR>", "Generate" },
  b = { "<cmd>CMakeBuild --parallel 128<CR>", "Build" },
  c = { "<cmd>CMakeClean<CR>", "Clean" },
}
local actions = require "telescope.actions"
lvim.builtin.telescope.defaults.mappings.i["<CR>"] = actions.select_default


-- buffer switch
lvim.keys.normal_mode["<C-b>"] = ":bn<cr>"
lvim.keys.normal_mode["<C-p>"] = ":bp<cr>"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
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


lvim.plugins = {
  { "folke/tokyonight.nvim" },
  { "hrsh7th/vim-vsnip" },
  { "hrsh7th/cmp-vsnip" },
  { "junnplus/nvim-lsp-setup" },
  { "p00f/clangd_extensions.nvim" },
  { "morhetz/gruvbox" },
  { "phaazon/hop.nvim" },
  { "simrat39/rust-tools.nvim" },
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
