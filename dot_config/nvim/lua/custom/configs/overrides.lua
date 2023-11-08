local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"javascript",
    "typescript",
		"c",
		"markdown",
		"markdown_inline",
		"vue",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		"prettier",
		"emmet-ls",

		--python stuff
		"black",
		"debugpy",
		"mypy",
		"ruff",
		"pyright",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

return M
