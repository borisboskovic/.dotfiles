local status_ok, _ = pcall(require, 'tpope/vim-fugitive')
if not status_ok then
    return
end

vim.keymap.set('n', '<leader>u', function()
    vim.cmd.UndotreeToggle()
    vim.cmd.UndotreeFocus()
end)
