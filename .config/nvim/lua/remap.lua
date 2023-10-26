vim.g.mapleader = ' '

-- If not using NvimTree
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Move selection up / down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

-- Quick fix navigation
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Paste from register 0
vim.keymap.set('n', '<leader>pp', '"0p')

local log_helpers = {
    javascript = { log_function = 'console.log("🎯 >> :", );', keystrokes = 'F:Pf,lp' },
    typescript = { log_function = 'console.log("🎯 >> :", );', keystrokes = 'F:Pf,lp' },
    javascriptreact = { log_function = 'console.log("🎯 >> :", );', keystrokes = 'F:Pf,lp' },
    typescriptreact = { log_function = 'console.log("🎯 >> :", );', keystrokes = 'F:Pf,lp' },
    rust = { log_function = 'println!("🎯 >> : {:?}", );', keystrokes = 'F:;Pf,lp' },
    lua = { log_function = 'print("🎯 >> :", )', keystrokes = 'F:Pt)p' },
}

vim.keymap.set('n', '<leader>lg', function()
    local helper = log_helpers[vim.bo.filetype]
    if helper ~= nil then
        vim.fn.feedkeys('yiwo' .. helper.log_function .. helper.keystrokes)
    end
end)

vim.keymap.set('x', '<C-l>', function()
    local helper = log_helpers[vim.bo.filetype]
    if helper ~= nil then
        vim.fn.feedkeys('yo' .. helper.log_function .. helper.keystrokes)
    end
end)
