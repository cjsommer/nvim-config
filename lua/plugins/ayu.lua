return {
	"Shatur/neovim-ayu",
	lazy = false,
	name = "ayu",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("ayu-mirage")
	end,
}
