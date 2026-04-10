return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local fzf = require("fzf-lua")

    fzf.setup({
      winopts = {
        preview = { default = "bat" }
      }
    })

    local keymap = vim.keymap
    keymap.set("n", "<C-p>", fzf.files, { desc = "Fuzzy find files" })
    keymap.set("n", "<C-b>", fzf.buffers, { desc = "Find buffers" })
    keymap.set("n", "<C-g>", fzf.live_grep, { desc = "Live grep" })
    keymap.set("n", "<C-f>", fzf.grep_curbuf, { desc = "Search current buffer" })
  end,
}
