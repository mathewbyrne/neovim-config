
vim.api.nvim_create_user_command('BitmatNvimConfig', function()
    vim.cmd('tabnew')
    vim.cmd('tcd ' .. vim.fn.stdpath('config'))
    vim.cmd('Ex')

    if vim.fn.exists(':Tabby') > 0 then
        vim.cmd('Tabby rename_tab Config')
    end
end, {})

require('bitmat.remap')
require('bitmat.options')

