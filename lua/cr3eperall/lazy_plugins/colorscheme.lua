return { 
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			flavour = "mocha",
			integrations = {
				treesitter = true,
			},
		}) -- ciao test comment
		vim.cmd.colorscheme "catppuccin"

	end
}

