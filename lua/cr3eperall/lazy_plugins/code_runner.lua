return {
    "CRAG666/code_runner.nvim",
    config = function ()
        require("code_runner").setup({
            mode = "toggleterm",
            focus = true,
            startinsert = true,
            term = {
                position ="bot",
                size = 13,
            },
            filetype = {
                c = function ()
                    local root_dir = require("lspconfig").util.root_pattern "CMakeLists.txt"(vim.loop.cwd())
                    local project_name = vim.fn.fnamemodify(root_dir, ":t")
                    return ("cd "..root_dir.." && make all && echo ---------------------- && ./"..project_name.."$end")
                end
            }
        })
        require("cr3eperall.remap").code_runner()
    end
}
