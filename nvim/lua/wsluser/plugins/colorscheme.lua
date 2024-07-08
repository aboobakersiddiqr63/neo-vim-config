return {
  {
    'Mofiqul/vscode.nvim',
    config = function()
      require('vscode').setup({
        -- Enable transparent background
        transparent = false,
        -- Enable italic comments
        italic_comments = true,
        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,
        -- Override colors
        color_overrides = {
          vscLineNumber = '#858585',
        },
        -- Override highlight groups
        group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          Cursor = { fg = '#FFFFFF', bg = '#4C4C4C', bold = true },
        }
      })

      -- Set the colorscheme
      vim.cmd("colorscheme vscode")
    end
  }
}
