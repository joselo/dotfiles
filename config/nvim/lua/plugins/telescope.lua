return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "natecraddock/telescope-zf-native.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },

      extensions = {
        ["zf-native"] = {
          -- options for sorting file-like items
          file = {
            -- override default telescope file sorter
            enable = true,

            -- highlight matching text in results
            highlight_results = true,

            -- enable zf filename match priority
            match_filename = true,

            -- optional function to define a sort order when the query is empty
            initial_sort = nil,

            -- set to false to enable case sensitive matching
            smart_case = true,
          },

          -- options for sorting all other items
          generic = {
            -- override default telescope generic item sorter
            enable = true,

            -- highlight matching text in results
            highlight_results = true,

            -- disable zf filename match priority
            match_filename = false,

            -- optional function to define a sort order when the query is empty
            initial_sort = nil,

            -- set to false to enable case sensitive matching
            smart_case = true,
          },
        }
      },

      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    })

    telescope.load_extension("zf-native")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<C-b>", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<C-g>", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find string in the current buffer" })
  end,
}
