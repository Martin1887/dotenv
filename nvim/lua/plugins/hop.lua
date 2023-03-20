return {
  -- disable leap and flit
  {"ggandor/flit.nvim", enabled = false},
  {"ggandor/leap.nvim", enabled = false},
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
      require'hop'.setup {}
    end,
    keys = {
      {
        "s", "<cmd>HopChar2<cr>", desc = "Hop char 2"
      },
      {
        "S", "<cmd>HopWord<cr>", desc = "Hop word"
      },
      -- with relative numbers this is not needed
      -- {
      --   "<leader>s", "<cmd>HopLineStart<cr>", desc = "Hop line start"
      -- },
      {
        "f", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true}) end
      },
      {
        "F", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true}) end
      },
      {
        "t", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1}) end
      },
      {
        "T", function() require("hop").hint_char1({direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1}) end
      }
    }
  }
}
