return {
    general = function()
        vim.g.mapleader = " "
        vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
        vim.keymap.set("i", "jk", "<Esc>")
        vim.keymap.set("n", "<leader>w", vim.cmd.w)
        vim.keymap.set("i", "<C-h>", "<Left>")
        vim.keymap.set("i", "<C-j>", "<Down>")
        vim.keymap.set("i", "<C-k>", "<Up>")
        vim.keymap.set("i", "<C-l>", "<Right>")
        vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
        vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action)
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename)
    end,
    telescope = function (builtin)
        vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
        vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
    end,
    better_escape = function ()
        return {"jk", "kj"}
    end,
    fugitive = function ()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    end,
    lsp = function (cmp,cmp_action)
        return cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
          ['<C-f>'] = cmp_action.luasnip_jump_forward(),
          ['<C-b>'] = cmp_action.luasnip_jump_backward(),
          ['<CR>'] = cmp.mapping.confirm({ select = true}),
        })
    end,
    undotree = function ()
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end,
    toggleterm = function ()
        vim.keymap.set({'t','n'}, '<C-/>', vim.cmd.ToggleTerm)
    end,
    code_runner = function ()
        vim.keymap.set('n', '<leader>rr', '<cmd>RunCode<CR>', { noremap = true, silent = false })
        vim.keymap.set('n', '<leader>rf', '<cmd>RunFile<CR>', { noremap = true, silent = false })
        vim.keymap.set('n', '<leader>rp', '<cmd>RunProject<CR>', { noremap = true, silent = false })
    end,
    comment = function ()
        return {
            toggler = {
                ---Line-comment toggle keymap
                line = "<leader>cc",
                ---Block-comment toggle keymap
                block = "<leader>cb",
            },
            opleader = {
                ---Line-comment keymap
                line = '<leader>c',
                ---Block-comment keymap
                block = '<leader>b',
            },
            extra = {
                ---Add comment on the line above
                above = '<leader>cO',
                ---Add comment on the line below
                below = '<leader>co',
                ---Add comment at the end of line
                eol = '<leader>cA',
            },
        }
    end,
    trouble = function ()
        vim.keymap.set('n', '<leader>t', vim.cmd.TroubleToggle)
    end,
    surround = function ()
        return {
            keymaps = {
                insert = "<C-g>s",
                insert_line = "<C-g>S",
                normal = "ys",
                normal_cur = "yss",
                normal_line = "yS",
                normal_cur_line = "ySS",
                visual = "S",
                visual_line = "gS",
                delete = "ds",
                change = "cs",
                change_line = "cS",
            },
        }
    end
}
