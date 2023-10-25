local options = {
    number = true,
    relativenumber = true,

    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,

    wrap = false,

    swapfile = false,
    backup = false,
    undodir = os.getenv("HOME") .. "/.nvim/undodir",
    undofile = true,

    hlsearch = true, -- Search highlighting,
    incsearch = true, -- Incremental search,

    scrolloff = 8, -- Number of lines beneath/above the cursor,
    signcolumn = "yes",

    colorcolumn = "80",
--    termguicolors = true,

    spell = false,
    spelllang = "en_us",
}

for option, value in pairs(options) do
	vim.opt[option] = value
end
