return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
    "folke/trouble.nvim", -- Ensure trouble.nvim is listed as a dependency
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local trouble = require("trouble") -- Import trouble module

    -- Custom actions
    local custom_actions = {
      open_trouble_qflist = function(prompt_bufnr)
        trouble.toggle("quickfix")
      end,
    }

    telescope.setup({
      defaults = {
        path_display = { "shorten" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = function(prompt_bufnr)
              actions.send_selected_to_qflist(prompt_bufnr)
              custom_actions.open_trouble_qflist(prompt_bufnr)
            end,
            ["<C-t>"] = trouble.smart_open_with_trouble, -- Corrected function call
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- Keymaps using vim.keymap
    local keymap = vim.keymap

    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
  end,
}

