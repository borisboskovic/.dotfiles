vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.keymap.set('n', '<leader>pv', ':NvimTreeFindFileToggle<CR>')

require('nvim-tree').setup({
    disable_netrw = true,
    hijack_netrw = true,
    view = {
        number = true,
        relativenumber = true,
        width = 40,
    },
    renderer = {
        highlight_git = false,
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
})
