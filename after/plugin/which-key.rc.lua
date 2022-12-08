local status = pcall(require, "which-key")
if not status then
	return
end

-- which-key setup
require("which-key").setup({
	triggers = { "<leader>" },
	triggers_blacklist = {
		i = { "j", "k" },
		v = { "j", "k" },
		n = { "j", "k", "!" },
	},
})
