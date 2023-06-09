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
  { "hiphish/rainbow-delimiters.nvim" },
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
  {
    "shortcuts/no-neck-pain.nvim",
    opts = {
      width = 120,
    },
  },
  {
    "mrjones2014/legendary.nvim",
    version = "v2.11.0",
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    keys = {
      { "<leader>P", "<cmd>Legendary<cr>", desc = "Legendary Command Palette" },
    },
    opts = {
      sort = { frecency = false },
      lazy_nvim = {
        auto_register = true,
      },
      which_key = {
        auto_register = true,
        use_groups = false,
      },
      -- sqlite is only needed if you want to use frecency sorting
      -- dependencies = { 'kkharji/sqlite.lua' }
    },
  },
  {
    "cpea2506/relative-toggle.nvim",
  },
  {
    "nat-418/boole.nvim",
    config = function()
      require("boole").setup({
        mappings = {
          increment = "<C-a>",
          decrement = "<C-z>",
        },
      })
    end,
  },
  {
    "AckslD/nvim-FeMaco.lua",
    config = function()
      require("femaco").setup()
    end,
  },
  {
    "chrisgrieser/nvim-spider",
    lazy = true,
  },
}
