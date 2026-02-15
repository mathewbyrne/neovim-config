
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop= 4
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.cursorline = true
vim.opt.colorcolumn = '80'

vim.cmd.colorscheme('tokyonight')

if vim.fn.has('win32') or vim.fn.has('win64') then
    vim.opt.shell = 'pwsh.exe'
elseif vim.fn.has('macunix') then
    vim.opt.shell = 'zsh'
else
    vim.opt.shell = 'bash'
end

-- On entering a terminal window, enter insert mode.
vim.api.nvim_create_autocmd('WinEnter', {
    pattern = '*',
    callback = function()
        if vim.bo.buftype == 'terminal' then
            vim.cmd('startinsert')
        end
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'markdown',
    callback = function()
        vim.opt_local.textwidth = 80
    end
})
