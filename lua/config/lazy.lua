-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local plugins = "plugins"

local opts = {
	-- defaults = {
	-- 	lazy = true,
	-- },
	performance = {
		rtp = {
			disabled_plugins = {
				-- "gzip",
				-- "matchit",
				-- "matchparen",
				"netrw",
				"netrwPlugin",
				-- "tarPlugin",
				-- "tohtml",
				-- "tutor",
				-- "zipPlugin",
			},
		},
	},
	checker = {
		-- Automatically check for package updates
		enabled = true,
		-- Don't spam us wiht notification every time an updte is available
		notify = false,
	},
}

-- Setup lazy.nvim
require("lazy").setup(plugins, opts)
