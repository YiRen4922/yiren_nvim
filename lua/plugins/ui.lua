local ui = {
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
      },
    },
  },
  {
     "utilyre/barbecue.nvim",
     version = "*",
     dependencies = {
       "SmiteshP/nvim-navic",
       "nvim-tree/nvim-web-devicons", -- optional dependency
     },
     opts = {
       -- configurations go here
     },
   
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    

    config = function()
        vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
        local function my_on_attach(bufnr)
          local api = require('nvim-tree.api')

          local function opts(desc)
            return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
          end

            api.config.mappings.default_on_attach(bufnr)
          -- add your mappings
            vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
          ---
        end
      require("nvim-tree").setup({
        on_attach = my_on_attach,
        filters = { custom = { "^.git$" } },
      })
    end,
  },
}

return ui
