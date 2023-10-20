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
        javascriptreact = prettierd_formatter,
        typescript = prettierd_formatter,
        typescriptreact = prettierd_formatter,

        -- Format with LSP by default
        ["*"] = {
            function()
                local formatters = require("formatter.util")
                    .get_available_formatters_for_ft(vim.bo.filetype)
                if #formatters > 0 then
                    return
                end
                local active_clients = vim.lsp.get_active_clients()
                for _, client in pairs(active_clients) do
                    if client.server_capabilities.documentFormattingProvider then
                        return vim.lsp.buf.format()
                    end
                end
            end
        }
    }
})

vim.keymap.set("n", "<leader>ff", ":Format<CR>")
