
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

if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
    vim.opt.shell = 'pwsh.exe'
    vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy Bypass -Command'
    vim.opt.shellxquote = ''
    vim.opt.shellquote = ''
    vim.opt.shellpipe = '2>&1 | Out-File -Encoding utf8 %s'
    vim.opt.shellredir = '2>&1 | Out-File -Encoding utf8 %s'

    vim.opt.makeprg = 'cmd /c build.bat'
elseif vim.fn.has('macunix') == 1 then
    vim.opt.shell = 'zsh'
    vim.opt.makeprg = 'make'
else
    vim.opt.shell = 'bash'
    vim.opt.makeprg = 'make'
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
