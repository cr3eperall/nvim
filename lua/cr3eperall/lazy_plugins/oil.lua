return {
    'stevearc/oil.nvim',
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
        local config = require("cr3eperall.remap").oil()
        require("oil").setup({
            keymaps = config.keymaps,
            view_options = {
                show_hidden = true,
            }
        })
    end
}
