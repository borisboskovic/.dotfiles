local utils = require('utils')

local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
    return
end

local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
    '                                                     ',
    '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
    '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
    '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
    '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
    '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
    '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
    '                                                     ',
}

dashboard.section.buttons.val = {
    dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
    dashboard.button('f', '󰈞  > Find file', ':Telescope find_files<CR>'),
    dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
    dashboard.button('s', '  > Settings', ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),
    dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
}

local function get_footer()
    local url = 'https://programming-quotesapi.vercel.app/api/random'
    local command = 'curl -s ' .. url
    local handle = io.popen(command)
    if not handle then
        return ''
    end

    local response = handle:read('*a')
    handle:close()
    local result = vim.json.decode(response)
    if not result or not result.quote or not result.author then
        return ''
    end

    local output_lines = {
        '┌────────────────────────────────────────────────────────────────────────────────────┐',
    }
    local lines = utils.break_text_at_whitespace(result.quote, 80)
    for _, l in ipairs(lines) do
        table.insert(output_lines, '│  ' .. l .. '  │')
    end

    local king_bear = {
        [[│                                                                                    │]],
        '│  ' .. utils.get_full_line('- ' .. result.author, 80) .. '  │',
        [[└────────────────────────────────────────────────────────────────────────────────────┘]],
        [[                                    o                                                 ]],
        [[                                      o                                               ]],
        [[                                        o                                             ]],
        [[                                .--.              .--.                                ]],
        [[                               : (\ ". _......_ ." /) :                               ]],
        [[                                '.    `        `    .'                                ]],
        [[                                 /'   _        _   `\                                 ]],
        [[                                /     0}      {0     \                                ]],
        [[                               |       /      \       |                               ]],
        [[                               |     /'        `\     |                               ]],
        [[                                \   | .  .==.  . |   /                                ]],
        [[                                 '._ \.' \__/ './ _.'                                 ]],
        [[                                 /  ``'._-''-_.'``  \                                 ]],
    }

    for _, value in ipairs(king_bear) do
        table.insert(output_lines, value)
    end

    return output_lines
end

dashboard.section.footer.val = get_footer()

alpha.setup(dashboard.config)
