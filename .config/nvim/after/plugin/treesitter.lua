require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
	  "bash",
	  "css",
	  "c",
	  "dockerfile",
	  "javascript",
	  "lua",
	  "prisma",
	  "query",
	  "rust",
	  "typescript",
	  "vim",
	  "vimdoc",
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  -- ignore_install = { },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
