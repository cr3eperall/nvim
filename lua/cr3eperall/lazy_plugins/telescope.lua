return{
	"nvim-telescope/telescope.nvim", tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({})
		local builtin = require('telescope.builtin')
        require("cr3eperall.remap").telescope(builtin)
	end
}
