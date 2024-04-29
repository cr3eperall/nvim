return {
    'numToStr/Comment.nvim',
    config = function()
        local remaps = require("cr3eperall.remap").comment()
        require('Comment').setup({
            sticky = false,
            toggler = remaps.toggler,
            opleader = remaps.opleader,
            extra = remaps.extra,
        })
    end
}
