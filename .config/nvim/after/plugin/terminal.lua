vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set('n', '<C-q>', ':ToggleTerm<CR>')

require('toggleterm').setup({
    direction = 'horizontal',
})
