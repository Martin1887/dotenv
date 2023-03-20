return {
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup {
        handlers = {
          cursor = true,
          diagnostic = true,
          gitsigns = true,
          handle = true,
          search = true,
          ale = false,
        },
      }
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
      require("scrollbar.handlers.gitsigns").setup()
    end
  },
  -- TODO: scrollbar not working, opened issues
  {
    "kevinhwang91/nvim-hlslens",
    config = function()
      -- require('hlslens').setup() is not required
      require("scrollbar.handlers.search").setup({
          -- hlslens config overrides, nvim and hop keymaps defaults are better
      })
    end,
    dependencies = {
    "petertriho/nvim-scrollbar"
    }
  }
}
