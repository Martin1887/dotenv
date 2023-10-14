return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      "debugloop/telescope-undo.nvim",
    },
    build = "make",
    opts = {
      extensions = {
        undo = {
          side_by_side = false,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.6,
          },
        },
      },
    },
    config = function()
      local Util = require("lazyvim.util")
      local telescope = require("telescope")
      Util.on_load("telescope.nvim", function()
        telescope.load_extension("fzf")
        telescope.load_extension("projects")
        telescope.load_extension("undo")
      end)
    end,
  },
  {
    "debugloop/telescope-undo.nvim",
  },
}
