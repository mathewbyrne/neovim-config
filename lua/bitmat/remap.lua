vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

vim.keymap.set('n', '<leader>nvc', ':BitmatNvimConfig<CR>', { desc = 'Edit Neovim config in new tab' })

vim.keymap.set('n', '<Tab>', '<C-w>w', { desc = 'Switch window' })

