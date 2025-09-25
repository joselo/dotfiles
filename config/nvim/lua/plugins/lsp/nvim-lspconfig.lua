return {
  'neovim/nvim-lspconfig',
  cmd = {'LspInfo', 'LspInstall', 'LspStart'},
  event = {'BufReadPre', 'BufNewFile'},
  dependencies = {
    {'hrsh7th/cmp-nvim-lsp'},
    {'williamboman/mason-lspconfig.nvim'},
  },
  config = function()
    -- LSP Zero setup
    local lsp_zero = require('lsp-zero')
    lsp_zero.extend_lspconfig()

    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    require('mason-lspconfig').setup({
      ensure_installed = {
        "elixirls",
        "lua_ls"
      },
      handlers = {
        -- Default handler for all servers
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,

        -- Custom handler for Lua
        lua_ls = function()
          local lua_opts = lsp_zero.nvim_lua_ls()
          require('lspconfig').lua_ls.setup(lua_opts)
        end,

        -- Custom handler for Elixir
        elixirls = function()
          require('lspconfig').elixirls.setup({
            settings = {
              elixirLS = {
                dialyzerEnabled = false,
                fetchDeps = false,
              }
            }
          })
        end,
      }
    })
  end
}

