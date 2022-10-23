local util = require 'lspconfig.util'

local bin_name = 'sparql-language-server'
local cmd = { 'node', bin_name, '--stdio' }

return {
    default_config = {
        cmd = cmd,
        filetypes = { 'sparql', 'rq' },
        root_dir = util.find_git_ancestor or vim.fn.getcwd(),
        single_file_support = true
    }
}
