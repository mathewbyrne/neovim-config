
vim.api.nvim_create_user_command('BitmatNvimConfig', function()
    vim.cmd('tabnew')
    vim.cmd('tcd ' .. vim.fn.stdpath('config'))
    vim.cmd('Ex')
end, {})

require('bitmat.remap')
require('bitmat.options')

