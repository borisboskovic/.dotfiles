local mark_status_ok, mark = pcall(require, 'harpoon.mark')
if not mark_status_ok then
    return
end

local ui_status_ok, ui = pcall(require, 'harpoon.ui')
if not ui_status_ok then
    return
end

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

for i = 1, 9 do
    vim.keymap.set('n', '<leader>' .. i, function()
        ui.nav_file(i)
    end)
end
