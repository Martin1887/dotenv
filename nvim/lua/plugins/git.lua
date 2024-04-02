return {
  { "rhysd/git-messenger.vim" },
  {
    "airblade/vim-gitgutter",
    keys = {
      { "[h", "<cmd>GitGutterPrevHunk<cr>", desc = "Previous hunk (git change)" },
      { "]h", "<cmd>GitGutterNextHunk<cr>", desc = "Next hunk (git change)" },
    },
  },
  { "sindrets/diffview.nvim" },
}
