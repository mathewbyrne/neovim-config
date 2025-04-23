-- unbind arrow keys, we don't need em
vim.keymap.set({ 'n', 'v', 'i' }, '<Up>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Down>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Left>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Right>', '<Nop>')

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

vim.keymap.set('n', '<leader>nvc', ':BitmatNvimConfig<CR>', { desc = 'Edit Neovim config in new tab' })

vim.keymap.set('n', '<Tab>', '<C-w>w', { desc = 'Switch window' })

vim.keymap.set('n', '<leader>tt', function ()
    vim.cmd('rightbelow vsplit')
    vim.cmd('terminal')
    vim.cmd('startinsert')
end, { desc = 'Open a terminal in a right split' })

