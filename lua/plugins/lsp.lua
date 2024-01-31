return {
  -- {
  --   "williamboman/mason.nvim",
  --   config = function()
  --     require("mason").setup()
  --   end
  -- },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   config = function()
  --     require("mason-lspconfig").setup({
  --       ensure_installed = {"lua_ls"}
  --     })
  --   end
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     local lspconfig = require("lspconfig")
  --
  --     lspconfig.lua_ls.setup({})
  --   end
  -- }

  {
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
      config = function()
        local lsp_zero = require('lsp-zero')
        lsp_zero.extend_lspconfig()

        lsp_zero.on_attach(function(client, bufnr)
          -- see :help lsp-zero-keybindings
          -- to learn the available actions
          lsp_zero.default_keymaps({buffer = bufnr})

          vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        end)


        require("mason").setup({})
        require("mason-lspconfig").setup({
          ensure_installed = {"lua_ls", "tsserver", "tflint", "sqlls"},
          handlers = {
            lsp_zero.default_setup,
            lua_ls = function ()
              local lspconfig = require("lspconfig")
              lspconfig.lua_ls.setup({})
            end
          }
        })
      end

    },

  }
}
