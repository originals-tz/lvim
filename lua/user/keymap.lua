lvim.keys.normal_mode["<space>d"] = ":Dox<cr>"
lvim.keys.normal_mode["<space>G"] = ":LazyGit<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-e>"] = ":NvimTreeFocus<cr>"
lvim.keys.normal_mode["<C-]>"] = "<cmd>lua vim.lsp.buf.definition()<cr>"
-- buffer switch
lvim.keys.normal_mode["N"] = ":bn<cr>"
lvim.keys.normal_mode["P"] = ":bp<cr>"

lvim.builtin.which_key.mappings["C"] = {
  name = "CMake",
  g = { "<cmd>CMakeGenerate<CR>", "Generate" },
  b = { "<cmd>CMakeBuild --parallel <CR>", "Build" },
  c = { "<cmd>CMakeClose<CR>", "Close" },
}

lvim.keys.normal_mode["s"] = ":HopWord<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )
