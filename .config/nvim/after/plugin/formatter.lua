local prettierd_formatter = {
    function()
        return {
            exe = "prettierd",
            args = { vim.api.nvim_buf_get_name(0) },
            stdin = true
        }
    end
}

require('formatter').setup({
    logging = false,
    filetype = {
        javascript = prettierd_formatter,
        typescript = prettierd_formatter,

        -- Format with LSP by default
        ["*"] = {
            function()
                local formatters = require("formatter.util")
                    .get_available_formatters_for_ft(vim.bo.filetype)
                local formatters_len = 0
                for _ in pairs(formatters) do
                    formatters_len = formatters_len + 1
                end
                if formatters_len == 0 then
                    vim.lsp.buf.format()
                end
            end
        }
    }
})

vim.keymap.set("n", "<leader>ff", ":Format<CR>")
