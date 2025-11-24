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
        "lua_ls",
        "ruby_lsp"
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
        ["expert"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.expert.setup({
            cmd = { "/usr/bin/expert" },
            filetypes = { 'elixir', 'eelixir', 'heex' },
          })
        end,

        -- Custom handler for Ruby
        ["ruby"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.ruby_lsp.setup({
            init_options = {
              formatter = 'standard',
              linters = { 'standard' },
              addonSettings = {
                ["Ruby LSP Rails"] = {
                  enablePendingMigrationsPrompt = false,
                },
              },
            },
          })
        end,
      }
    })
  end
}

