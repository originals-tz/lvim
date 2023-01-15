require('code_runner').setup({
    -- put here the commands by filetype
    filetype = {
        cpp = "g++ -std=c++11 $fileName -o /tmp/a.out && /tmp/a.out",
        python = 'python3'
    },
})

require('cmake-tools').setup({
    cmake_command = "cmake",
    cmake_build_directory = "build",
    cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
    cmake_build_options = {},
    cmake_show_console = "always", -- "always", "only_on_error"
})
