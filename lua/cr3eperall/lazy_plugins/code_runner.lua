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
            -- $file: path to current open file (e.g. /home/user/current_dir/current_file.ext
            -- $fileName: filename of current open file (e.g. current_file.ext)
            -- $fileNameWithoutExt: filename without extension of current file (e.g. current_file)
            -- $dir: path to directory of current open file (e.g. /home/user/current_dir)
            -- $end: finish the command (it is useful for commands that do not require final autocompletion)
            filetype = {
                c = function ()
                    local root_dir = require("lspconfig").util.root_pattern "CMakeLists.txt"(vim.loop.cwd())
                    if root_dir == nil then
                        -- Run File
                        return ("cd $dir && gcc -std=c99 -pedantic $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt && rm /tmp/$fileNameWithoutExt")
                    else
                        -- Run Code
                        local project_name = vim.fn.fnamemodify(root_dir, ":t")
                        return ("cd "..root_dir.." && make all && echo ---------------------- && ./"..project_name.."$end")
                    end
                end
            },
            project = {
            },
        })
        require("cr3eperall.remap").code_runner()
    end
}
