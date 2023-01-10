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
