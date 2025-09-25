return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    local fzf = require('fzf-lua')
    local actions = require('fzf-lua.actions')

    fzf.setup({
      files = {
        cmd = "fd --type f --hidden --follow --exclude .git"
      },
      grep = {
        rg_opts = "--glob '!deps/*' --glob '!_build/*' --glob '!node_modules/*' --glob '!erl_crash.dump' --hidden --follow"
      },
      actions = {
        files = {
          ["default"] = actions.file_edit,
          ["ctrl-q"] = actions.file_sel_to_qf,
        }
      },
      keymap = {
        fzf = {
          ["ctrl-a"] = "toggle-all",
        }
      }
    })

    vim.keymap.set('n', '<C-p>', fzf.files, { noremap = true, silent = true })
    vim.keymap.set('n', '<C-b>', fzf.buffers, { noremap = true, silent = true })
    vim.keymap.set('n', '<C-g>', fzf.live_grep, { noremap = true, silent = true })
    vim.keymap.set('n', '<C-f>', fzf.blines, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>dw', fzf.diagnostics_workspace, { noremap = true, silent = true })
  end
}
