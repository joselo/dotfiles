return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = {
        "lua", "elixir", "bash", "javascript", "html", "json", "heex"
      },
      auto_install = true,
      indent = { enable = true },
    })

    -- Auto-enable highlight for all buffers
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end
}
