return{
	"nvim-telescope/telescope.nvim", tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
            defaults = {
                file_ignore_patterns = {
                    ".git/",
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        })
		local builtin = require('telescope.builtin')
        require("cr3eperall.remap").telescope(builtin)
	end
}
