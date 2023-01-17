require('code_runner').setup({
    mode = "float",
    startinsert = true,
    float = {
        border = 'single'
    },
    -- put here the commands by filetype
    filetype = {
        cpp = "clang++  $fileName -o /tmp/a.out && /tmp/a.out",
        python = "python3",
        go = "go run",
        sh = "sh"
    },
})

require('cmake-tools').setup({
    cmake_command = "cmake",
    cmake_build_directory = "build",
    cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
    cmake_build_options = {},
    cmake_show_console = "always", -- "always", "only_on_error"
})

local dap = require("dap")
dap.adapters.lldb = {
    type = 'executable',
    command = '/opt/homebrew/opt/llvm/bin/lldb-vscode',
    name = 'lldb'
}
dap.configurations.cpp = {
    {
        name = 'Launch',
        type = 'lldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
    },
}

local dapui = require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

lvim.builtin.dap = {
    active = true,
    on_config_done = nil,
    breakpoint = {
        text = lvim.icons.ui.Bug,
        texthl = "DiagnosticSignError",
        linehl = "",
        numhl = "",
    },
    breakpoint_rejected = {
        text = lvim.icons.ui.Bug,
        texthl = "DiagnosticSignError",
        linehl = "",
        numhl = "",
    },
    stopped = {
        text = lvim.icons.ui.BoldArrowRight,
        texthl = "DiagnosticSignWarn",
        linehl = "Visual",
        numhl = "DiagnosticSignWarn",
    },
    log = {
        level = "info",
    },
    ui = {
        auto_open = true,
        notify = {
            threshold = vim.log.levels.INFO,
        },
        config = {
            expand_lines = true,
            icons = { expanded = "", collapsed = "", circular = "" },
            mappings = {
                -- Use a table to apply multiple mappings
                expand = { "<CR>", "<2-LeftMouse>" },
                open = "o",
                remove = "d",
                edit = "e",
                repl = "r",
                toggle = "t",
            },
            layouts = {
                {
                    elements = {
                        { id = "stacks", size = 0.75 },
                        { id = "repl", size = 0.25 },
                    },
                    size = 0.25,
                    position = "left",
                },
                {
                    elements = {
                        { id = "scopes", size = 1 },
                    },
                    size = 0.25,
                    position = "bottom",
                },
            },
            floating = {
                max_height = 0.9,
                max_width = 0.5, -- Floats will be treated as percentage of your screen.
                border = vim.g.border_chars, -- Border style. Can be 'single', 'double' or 'rounded'
                mappings = {
                    close = { "q", "<Esc>" },
                },
            },
        },
    },
}
