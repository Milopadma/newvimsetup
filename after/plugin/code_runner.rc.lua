local status = pcall(require, 'code_runner')

if not status then
  return
end

require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && cargo r $fileName && $dir/$fileNameWithoutExt"
	},
    float = {
      border = "single",
      winblend = 0,
      width = 0.6,
      height = 0.8,
      highlight = "NormalFloat",
      title = "Code Runner",
    },

}
)
