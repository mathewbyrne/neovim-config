-- unbind arrow keys, let's remove the crutch
vim.keymap.set({ 'n', 'v', 'i' }, '<Up>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Down>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Left>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Right>', '<Nop>')

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

vim.keymap.set('n', '<leader>nvc', ':BitmatNvimConfig<CR>', { desc = 'Edit Neovim config in new tab' })

vim.keymap.set('n', '<Tab>', '<C-w>w', { desc = 'Switch window' })

vim.keymap.set('n', '<leader>tt', function ()
    vim.cmd('rightbelow vsplit')
    vim.cmd('terminal')
    vim.cmd('startinsert')
end, { desc = 'Open a terminal in a right split' })

vim.keymap.set('n', '<leader>Y', ':%y+<CR>', { desc = 'Yank entire file to system clipboard' })

vim.keymap.set('n', '<leader>gf', function()
    local file = vim.fn.expand('<cfile>')
    local col = vim.fn.col('.')
    local line = vim.fn.getline('.')

    -- The line number will be after the current cursor :w
    local after = string.sub(line, col)
    local lineno = string.match(after, '%((%d+)%)')

    vim.cmd('wincmd h')
    vim.cmd('edit ' .. vim.fn.fnameescape(file))
    if lineno then
        vim.cmd(lineno)
    end
end, { desc = 'Open <cfile> in left window and jump to line (MSVC style)' })
