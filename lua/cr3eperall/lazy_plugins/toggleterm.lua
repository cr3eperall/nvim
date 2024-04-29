return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
        require("toggleterm").setup({
            start_in_insert = true,
        })
        require("cr3eperall.remap").toggleterm()
    end
}
