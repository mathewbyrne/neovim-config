-- unbind arrow keys, let's remove the crutch
vim.keymap.set({ 'n', 'v', 'i' }, '<Up>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Down>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Left>', '<Nop>')
vim.keymap.set({ 'n', 'v', 'i' }, '<Right>', '<Nop>')

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- remapping various movements to centre vertically afterwards
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', '``', '``zz', { remap = false, desc = 'Jump back and centre' })

-- mappings for moving lines around
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move block down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move block up' })

-- create lines without going into insert mode
vim.keymap.set('n', '<leader>o', 'o<Esc>', { desc = 'Insert line below without entering insert mode' })
vim.keymap.set('n', '<leader>O', 'O<Esc>', { desc = 'Insert line above without entering insert mode' })

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
        vim.cmd('normal! zz')
    end
end, { desc = 'Open <cfile> in left window and jump to line (MSVC style)' })
