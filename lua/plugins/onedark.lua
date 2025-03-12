return {
	"navarasu/onedark.nvim",
	lazy = false,
	-- priority = 999,
	-- config = function()
	-- 	vim.cmd("colorscheme onedark")
	-- end,




    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('onedark').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'onedark'
    end,
}
