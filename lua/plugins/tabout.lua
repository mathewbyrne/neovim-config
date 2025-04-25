return {
    'abecodes/tabout.nvim',
    lazy = false,
    config = function()
        require('tabout').setup {
            completion = true
        }
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'saghen/blink.cmp',
    },
    event = 'InsertCharPre',
    priority = 1000,
}
