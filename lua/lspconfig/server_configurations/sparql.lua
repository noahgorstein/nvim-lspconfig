local util = require 'lspconfig.util'

local bin_name = 'sparql-language-server'
local cmd = { 'node', bin_name, '--stdio' }

if vim.fn.has 'win32' == 1 then
    cmd = { 'cmd.exe', '/C', bin_name, '--stdio' }
end

return {
    default_config = {
        cmd = cmd,
        filetypes = { 'sparql', 'rq' },
        root_dir = util.find_git_ancestor,
        single_file_support = true
    }
}
