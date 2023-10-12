local theme = {
    {
        "folke/tokyonight.nvim",
        dependencies = {
            "utilyre/barbecue.nvim",
            'nvim-lualine/lualine.nvim',
        },
        config = function()
            vim.cmd[[colorscheme tokyonight-storm]]
            -- Lua
            require('barbecue').setup {
              -- ... your barbecue config
              theme = 'tokyonight',
              -- ... your barbecue config
            }
            -- Lua
            -- Lua
            require('lualine').setup {
              options = {
                -- ... your lualine config
                theme = 'tokyonight'
                -- ... your lualine config
              }
            }
        end,
        opts = {
            style = "moon",
        },
    }
}
return theme
