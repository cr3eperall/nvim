return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        require("trouble").setup({})
        require("cr3eperall.remap").trouble()
    end,
}
