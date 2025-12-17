return {
  "nvim-treesitter/nvim-treesitter",
  tag = "v0.10.0",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      -- Instala automáticamente el parser si abres un archivo de ese tipo
      auto_install = true,

      -- Habilita el resaltado de sintaxis
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      -- Autoindentación basada en el árbol sintáctico
      indent = {
        enable = true,
      },

      -- Opcional: lenguajes que quieres tener sí o sí instalados al principio
      ensure_installed = {
        "lua", "elixir", "bash", "javascript", "html", "json", "heex", "eex"
      },
    }
  end
}

