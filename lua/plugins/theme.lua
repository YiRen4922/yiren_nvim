local theme = {
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "lualine",
            "nvim-tree/nvim-web-devicons",
            "barbecue",
        },
        config = function()
            vim.cmd[[colorscheme tokyonight-storm]]
        end,
        opts = {
            style = "moon",
        },
    }
}
return theme
