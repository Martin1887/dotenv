return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      "debugloop/telescope-undo.nvim",
    },
    build = "make",
    config = function()
      require("telescope").setup({
        extensions = {
          undo = {
            side_by_side = false,
            layout_strategy = "vertical",
            layout_config = {
              preview_height = 0.6,
            },
          },
        },
      })
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("projects")
      require("telescope").load_extension("undo")
    end,
  },
  {
    "debugloop/telescope-undo.nvim",
  },
}
