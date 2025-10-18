return {
  "KijitoraFinch/nanode.nvim",
  priority = 1000,
  config = function()
    require("nanode").setup({
      transparent = false,
    })
  end,
}
