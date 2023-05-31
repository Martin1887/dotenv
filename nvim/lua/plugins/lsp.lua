return {
  -- lspsaga finder is better
  -- {
  --   "rmagatti/goto-preview",
  --   config = function()
  --     require("goto-preview").setup({
  --       default_mappings = true,
  --     })
  --   end,
  -- },
  {
    "glepnir/lspsaga.nvim",
    event = "BufRead",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  },
  -- C++
  {
    "clangd/clangd",
    config = function()
      local default_capabilities = {
        textDocument = {
          completion = {
            editsNearCursor = true,
          },
        },
        offsetEncoding = { "utf-16" },
      }
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({
        capabilities = default_capabilities,
        root_dir = lspconfig.util.root_pattern(".git"),
      })
    end,
  },
  -- Rust
  {
    "simrat39/rust-tools.nvim",
    config = function()
      local rt = require("rust-tools")
      local extension_path = vim.env.HOME .. "/.vscode-oss/extensions/vadimcn.vscode-lldb-1.8.1-universal"
      local codelldb_path = extension_path .. "/adapter/codelldb"
      local liblldb_path = extension_path .. "/lldb/lib/liblldb.so"
      rt.setup({
        dap = {
          adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
        },
        server = {
          standalone = false,
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
              },
              cargo = {
                features = "all",
              },
            },
          },
        },
      })
    end,
  },
  {
    "saecki/crates.nvim",
    tag = "v0.3.0",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup({
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      })
    end,
  },
  -- Markdown
  {
    "artempyanykh/marksman",
    config = function()
      require("lspconfig").marksman.setup({})
    end,
  },
  -- LanguageTool
  {
    "barreiroleo/ltex-extra.nvim",
    config = function()
      require("lspconfig").ltex.setup({
        on_attach = function(client, bufnr)
          -- your other on_attach functions.
          require("ltex_extra").setup({
            load_langs = { "en-US" }, -- a table <string> : languages for witch dictionaries will be loaded
            init_check = true, -- boolean : whether to load dictionaries on startup
            path = vim.env.HOME .. "/.nvim/ltex", -- string : path to store dictionaries. Relative path uses current working directory
            log_level = "info", -- string : "none", "trace", "debug", "info", "warn", "error", "fatal"
          })
        end,
        -- TODO: check grammar on comments, not working
        filetypes = {
          "bib",
          -- "c++",
          -- "cpp",
          "gitcommit",
          -- "lua",
          "markdown",
          "org",
          "pandoc",
          "plaintex",
          "rst",
          "rnoweb",
          -- "rust",
          "tex",
        },
        settings = {
          ltex = {
            enabled = true,
            additionalRules = {
              motherTongue = "es",
            },
            ltex_ls = {
              path = "/usr/local/bin/ltex-ls",
            },
            java = {
              path = "/bin/java",
            },
            completionEnabled = true,
            -- "edit", "save" or "manual"
            checkFrequency = "edit",
          },
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonls = {},
        lua_ls = {
          mason = false, -- set to false if you don't want this server to be installed with mason
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
        marksman = {},
        pylyzer = {},
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    -- Add codespell (the other things are LazyVim defaults).
    -- It must be installed in the system, included in repositories of many distributtions.
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", ".git"),
        sources = {
          nls.builtins.formatting.fish_indent,
          nls.builtins.diagnostics.fish,
          nls.builtins.formatting.black,
          nls.builtins.diagnostics.ruff,
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.shfmt,
          nls.builtins.diagnostics.codespell.with({
            args = { "-L crate,Crate,crates,Crates", "-" },
          }),
          nls.builtins.formatting.uncrustify.with({
            filetypes = { "c", "cpp", "h", "hh" },
            extra_args = { "-c", ".uncrustify.cfg" },
          }),
        },
      }
    end,
  },
}
