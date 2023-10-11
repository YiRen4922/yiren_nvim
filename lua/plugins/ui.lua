local ui = {
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
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

          -- copy default mappings here from defaults in next section
          vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node,          opts('CD'))
          vim.keymap.set('n', '<C-e>', api.node.open.replace_tree_buffer,     opts('Open: In Place'))

          -- add your mappings
          vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
          ---
        end
      require("nvim-tree").setup({
        on_attach = my_on_attach,
      })
    end,
  },
}

return ui
