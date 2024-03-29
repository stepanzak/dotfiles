local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	-- Override plugin definition options
	{
		"aurum77/live-server.nvim",
		run = function()
			require("live_server.util").install()
		end,
		cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{ "debugloop/telescope-undo.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		opts = {
			extensions_list = { "themes", "terms", "undo" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
		dependencies = {
			{
				"nvim-treesitter/nvim-treesitter-textobjects",
			},
		},
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	-- Install a plugin
	-- {
	--   "max397574/better-escape.nvim",
	--   event = "InsertEnter",
	--   config = function()
	--     require("better_escape").setup()
	--   end,
	-- },

	{
		"andweeb/presence.nvim",
		lazy = false,
		config = function()
			require("presence").setup({ -- {{{
				-- General options
				neovim_image_text = "The Holy Text Editor that's better than Emacs", -- Text displayed when hovered over the Neovim image
				blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches

				-- Rich Presence text options
				editing_text = "Breaking %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
				file_explorer_text = "Lost in %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
				git_commit_text = "Committing changes (and war crimes)", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
				plugin_manager_text = "Installing some shiny plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
				reading_text = "Reading through %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
				workspace_text = "Trying to work on %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
			}) -- }}}
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		cmd = { "Trouble", "TroubleToggle", "TroubleClose", "TroubleRefresh" },
	},
	{
		"mfussenegger/nvim-dap",
		config = function(_, opts)
			require("core.utils").load_mappings("dap")
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
		config = function(_, opts)
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)
			require("core.utils").load_mappings("dap_python")
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = "mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
	-- this allows luasnip to load html snippets in vue files:
	{
		"hrsh7th/nvim-cmp",
		opts = overrides.cmp,
		dependencies = {
			{
				-- snippet plugin
				"L3MON4D3/LuaSnip",
				config = function(_, opts)
					-- load default luasnip config
					require("plugins.configs.others").luasnip(opts)
					local luasnip = require("luasnip")
					luasnip.filetype_extend("vue", { "html" })
					-- require("luasnip/loaders/from_vscode").lazy_load()
				end,
			},
		},
		{
			"gsuuon/tshjkl.nvim",
			opts = {
				keymaps = {
					toggle = "<leader>ts",
				},
			},
			keys = {
				{ "<leader>ts", desc = "Tree-sitter hjkl mode" },
			},
		},
	},
	{
		"stevearc/oil.nvim",
		opts = {
			default_file_explorer = false,
			view_options = { show_hidden = true },
			float = { padding = 4, max_width = 100, max_height = 80 },
		},
		init = function()
			vim.keymap.set("n", "-", require("oil").open_float, { desc = "Open parent directory" })
		end,
		config = function(this)
			require("oil").setup(this.opts)
		end,
	},

	-- To make a plugin not be loaded
	-- {
	--   "NvChad/nvim-colorizer.lua",
	--   enabled = false
	-- },
}

return plugins
