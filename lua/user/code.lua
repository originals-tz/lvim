require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		cpp = "g++ -std=c++11 $fileName && ./a.out"
	},
})
