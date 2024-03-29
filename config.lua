lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "nord"
--vim.g.tokyonight_style = "night"
lvim.leader = "space"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.timeoutlen = 100


lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.show_icons.git = true
lvim.builtin.nvimtree.adaptive_size = true

require 'nvim-treesitter.install'.compilers = { "clang++" }
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.indent = { enable = true, disable = { "c", "cpp" } }
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
    { "kdheepak/lazygit.nvim" },
    { 'shaunsingh/nord.nvim' },
    { "ellisonleao/glow.nvim" },
    { "Civitasv/cmake-tools.nvim" },
    { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' },
    { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' },
}
require "user.clang"
require "user.hop"
require "user.keymap"
require "user.ufo"
require "user.code"

-- lvim.builtin.lualine.style = 'lvim'

lvim.builtin.lualine.options.theme = 'nord'
lvim.builtin.lualine.options.component_separators = ''

lvim.builtin.bufferline.options.mode = "buffers"
lvim.builtin.bufferline.options.show_buffer_close_icons = false
-- lvim.builtin.bufferline.options.show_buffer_icons = false
lvim.builtin.bufferline.options.offsets = { { filetype = "NvimTree", text = " Explorer", text_align = "center" } }
lvim.builtin.bufferline.options.always_show_bufferline = true
