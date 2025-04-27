
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop= 4

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.colorcolumn = '80'

vim.cmd.colorscheme('tokyonight')

local os_name = vim.loop.os_uname().sysname
if os_name == 'Darwin' then
    vim.opt.shell = 'zsh'
elseif os_name == 'Windows_NT' then
    vim.opt.shell = 'pwsh.exe'
else
    vim.opt.shell = 'bash'
end

vim.opt.cursorline = true

vim.api.nvim_create_autocmd('TermOpen', {
    pattern = '*',
    callback = function()
        vim.cmd('startinsert')
    end,
})


