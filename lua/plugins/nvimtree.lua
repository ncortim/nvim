return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            auto_reload_on_write = true,
            hijack_netrw = true,

            sort = {
                sorter = "case_sensitive",
            },
            -- view = {
            --     width = 60,
            -- },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },

        }
    end,
}
