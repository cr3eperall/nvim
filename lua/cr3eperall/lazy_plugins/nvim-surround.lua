return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        local surround = require("cr3eperall.remap").surround();
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
            keymaps = surround.keymaps,
        })
    end
}
