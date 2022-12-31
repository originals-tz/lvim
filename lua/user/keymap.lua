lvim.keys.normal_mode["<space>d"] = ":Dox<cr>"
lvim.keys.normal_mode["<space>G"] = ":LazyGit<cr>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<C-e>"] = ":NvimTreeFocus<cr>"
lvim.keys.normal_mode["<C-]>"] = "<cmd>lua vim.lsp.buf.definition()<cr>"

-- buffer switch
lvim.keys.normal_mode["N"] = ":bn<cr>"
lvim.keys.normal_mode["P"] = ":bp<cr>"

lvim.builtin.which_key.mappings["lR"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "References" }
lvim.builtin.which_key.mappings["ls"] = { "<cmd>ClangdSwitchSourceHeader<CR>", "Switch[Header/Source]" }
lvim.builtin.which_key.mappings["x"] = { "<cmd>$quit<CR>", "Quit Last Window" }
lvim.builtin.which_key.mappings["C"] = {
    name = "CMake",
    g = { "<cmd>CMakeGenerate<CR>", "Generate" },
    b = { "<cmd>CMakeBuild --parallel 128<CR>", "Build" },
    c = { "<cmd>CMakeClean<CR>", "Clean" },
    t = {'<cmd>TermExec dir="Debug" cmd="make -j && ctest --verbose"<CR>', "CTest"}
}

lvim.builtin.which_key.mappings["r"] = {
    name = "Runner",
    r = {"<cmd>RunCode<CR>", "RunCode"}
}
lvim.keys.normal_mode["s"] = ":HopWord<cr>"
