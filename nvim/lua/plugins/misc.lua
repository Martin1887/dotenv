return {
  -- unnecessary using C-arrows and error with lspsaga_finder
  --{ "simeji/winresizer" },
  { "simnalamburt/vim-mundo" },
  -- new selection targets, like parentheses
  { "wellle/targets.vim" },
  -- powerful find and replace
  { "wincent/ferret" },
  -- :Abolish, :Subvert and coercion (text cases)
  { "tpope/vim-abolish" },
  { "tpope/vim-repeat" },
  -- gS to split and gJ to join
  { "AndrewRadev/splitjoin.vim" },
  -- better '%'
  { "andymass/vim-matchup" },
  -- TODO: nvim-ts-rainbow parentheses, recently archived
  -- This fork seems the most updated but keep active search
  { "mrjones2014/nvim-ts-rainbow" },
  -- LaTeX symbols in telescope
  { "nvim-telescope/telescope-symbols.nvim" },
  { "lervag/vimtex" },
  -- markdown and pandoc
  { "vim-pandoc/vim-pandoc-syntax" },
  { "vim-pandoc/vim-pandoc" },
  -- barbar (bufferline)
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "romgrk/barbar.nvim",
    -- version = "^1.0.0",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
    },
    opts = {
      auto_hide = true,
      exclude_ft = {},
      exclude_name = {},
      icons = {
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true },
          [vim.diagnostic.severity.WARN] = { enabled = true },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
      },
    },
  },
}
