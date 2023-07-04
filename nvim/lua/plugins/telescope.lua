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
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        detection_methods = { "pattern", "lsp" },
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "package.json" },
        show_hidden = true,
        silent_chdir = false,
        ignore_lsp = { "null-ls" },
      })
    end,
  },
  {
    "debugloop/telescope-undo.nvim",
  },
}
