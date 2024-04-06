return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = function(_, opts)
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }
      -- brighter highlights for rainbow delimiters
      local delims_highlight = {
        "BrightRainbowRed",
        "BrightRainbowYellow",
        "BrightRainbowBlue",
        "BrightRainbowOrange",
        "BrightRainbowGreen",
        "BrightRainbowViolet",
        "BrightRainbowCyan",
      }
      -- dimmed highlights
      local indent_highlight = {
        "DimmedRainbowRed",
        "DimmedRainbowYellow",
        "DimmedRainbowBlue",
        "DimmedRainbowOrange",
        "DimmedRainbowGreen",
        "DimmedRainbowViolet",
        "DimmedRainbowCyan",
      }
      local hooks = require("ibl.hooks")
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#CC4040" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#D8AA26" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#5050BB" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#CC8726" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#408740" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#874087" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#709999" })

        vim.api.nvim_set_hl(0, "BrightRainbowRed", { fg = "#FF7070" })
        vim.api.nvim_set_hl(0, "BrightRainbowYellow", { fg = "#E8BB26" })
        vim.api.nvim_set_hl(0, "BrightRainbowBlue", { fg = "#9999DD" })
        vim.api.nvim_set_hl(0, "BrightRainbowOrange", { fg = "#DD8726" })
        vim.api.nvim_set_hl(0, "BrightRainbowGreen", { fg = "#40AA40" })
        vim.api.nvim_set_hl(0, "BrightRainbowViolet", { fg = "#DD7780" })
        vim.api.nvim_set_hl(0, "BrightRainbowCyan", { fg = "#60AAAA" })

        vim.api.nvim_set_hl(0, "DimmedRainbowRed", { fg = "#600000" })
        vim.api.nvim_set_hl(0, "DimmedRainbowYellow", { fg = "#877040" })
        vim.api.nvim_set_hl(0, "DimmedRainbowBlue", { fg = "#262660" })
        vim.api.nvim_set_hl(0, "DimmedRainbowOrange", { fg = "#875026" })
        vim.api.nvim_set_hl(0, "DimmedRainbowGreen", { fg = "#264026" })
        vim.api.nvim_set_hl(0, "DimmedRainbowViolet", { fg = "#442640" })
        vim.api.nvim_set_hl(0, "DimmedRainbowCyan", { fg = "#264040" })
      end)

      vim.g.rainbow_delimiters = { highlight = delims_highlight }
      opts.scope = { enabled = true, highlight = highlight }
      opts.indent = { highlight = indent_highlight }
      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
}
