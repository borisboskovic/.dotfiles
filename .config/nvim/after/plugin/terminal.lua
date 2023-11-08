local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
    return
end

vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set('n', '<C-q>', ':ToggleTerm<CR>')

toggleterm.setup({
    direction = 'horizontal',
})
