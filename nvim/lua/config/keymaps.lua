-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/Lazyvim/Lazyvim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- C-x to close buffer and barbar mappings
map("n", "<C-x>", "<cmd>BufferClose<cr>", { desc = "Delete buffer", silent = true, noremap = true })
map("n", "H", "<cmd>BufferPrevious<cr>", { desc = "Previous buffer", silent = true, noremap = true })
map("n", "L", "<cmd>BufferNext<cr>", { desc = "Next buffer", silent = true, noremap = true })
map(
  "n",
  "<A-<>",
  "<cmd>BufferMovePrevious<cr>",
  { desc = "Re-order to previous buffer", silent = true, noremap = true }
)
map("n", "<A->>", "<cmd>BufferMoveNext<cr>", { desc = "Re-order to next buffer", silent = true, noremap = true })
map("n", "<A-1>", "<cmd>BufferGoto 1<cr>", { desc = "Go to buffer 1", silent = true, noremap = true })
map("n", "<A-2>", "<cmd>BufferGoto 2<cr>", { desc = "Go to buffer 2", silent = true, noremap = true })
map("n", "<A-3>", "<cmd>BufferGoto 3<cr>", { desc = "Go to buffer 3", silent = true, noremap = true })
map("n", "<A-4>", "<cmd>BufferGoto 4<cr>", { desc = "Go to buffer 4", silent = true, noremap = true })
map("n", "<A-5>", "<cmd>BufferGoto 5<cr>", { desc = "Go to buffer 5", silent = true, noremap = true })
map("n", "<A-6>", "<cmd>BufferGoto 6<cr>", { desc = "Go to buffer 6", silent = true, noremap = true })
map("n", "<A-7>", "<cmd>BufferGoto 7<cr>", { desc = "Go to buffer 7", silent = true, noremap = true })
map("n", "<A-8>", "<cmd>BufferGoto 8<cr>", { desc = "Go to buffer 8", silent = true, noremap = true })
map("n", "<A-9>", "<cmd>BufferGoto 9<cr>", { desc = "Go to buffer 9", silent = true, noremap = true })
map("n", "<A-0>", "<cmd>BufferLast<cr>", { desc = "Go to last buffer", silent = true, noremap = true })
map("n", "<leader>bp", "<cmd>BufferPin<cr>", { desc = "Pin/unpin buffer", silent = true, noremap = true })
map(
  "n",
  "<leader>bP",
  "<cmd>BufferCloseAllButPinned<cr>",
  { desc = "Delete not pinned buffers", silent = true, noremap = true }
)
map("n", "<C-p>", "<cmd>BufferPick<cr>", { desc = "Magic buffer-picking mode", silent = true, noremap = true })
map(
  "n",
  "<leader>bsb",
  "<cmd>BufferOrderByBufferNumber<cr>",
  { desc = "Sort buffers by buffer number", silent = true, noremap = true }
)
map(
  "n",
  "<leader>bsd",
  "<cmd>BufferOrderByDirectory<cr>",
  { desc = "Sort buffers by directory", silent = true, noremap = true }
)
map(
  "n",
  "<leader>bsl",
  "<cmd>BufferOrderByLanguage<cr>",
  { desc = "Sort buffers by language", silent = true, noremap = true }
)
map(
  "n",
  "<leader>bsw",
  "<cmd>BufferOrderByWindowNumber<cr>",
  { desc = "Sort buffers by window number", silent = true, noremap = true }
)

-- nvim-spider
map(
  { "n", "o", "x" },
  "w",
  "<cmd>lua require('spider').motion('w')<cr>",
  { desc = "Spider-w", silent = true, noremap = true }
)
map(
  { "n", "o", "x" },
  "b",
  "<cmd>lua require('spider').motion('b')<cr>",
  { desc = "Spider-b", silent = true, noremap = true }
)
map(
  { "n", "o", "x" },
  "e",
  "<cmd>lua require('spider').motion('e')<cr>",
  { desc = "Spider-e", silent = true, noremap = true }
)
map(
  { "n", "o", "x" },
  "ge",
  "<cmd>lua require('spider').motion('ge')<cr>",
  { desc = "Spider-ge", silent = true, noremap = true }
)

-- No neck pain (zen mode like)
map("n", "<leader>uz", "<cmd>NoNeckPain<cr>", { desc = "No neck pain (zen mode)", silent = true, noremap = true })

-- projects
map(
  "n",
  "<leader>p",
  "<cmd>lua require'telescope'.extensions.projects.projects{}<cr>",
  { desc = "Telescope projects", silent = true, noremap = true }
)

-- Telescope LaTeX symbols
map(
  "n",
  "<leader>tl",
  "<cmd> lua require'telescope.builtin'.symbols{ sources = {'math', 'latex'} } <cr>",
  { desc = "LaTeX symbols", silent = true, noremap = true }
)
-- Telescope undo
map("n", "<leader>tu", "<cmd>Telescope undo<cr>", { desc = "Telescope undo", silent = true, noremap = true })

-- FeMaco
map("n", "<leader>ce", "<cmd>FeMaco<cr>", { desc = "FeMaco float code editing", silent = true, noremap = true })

-- rust-tools
map(
  "n",
  "<leader>rr",
  "<cmd> lua require('rust-tools').runnables.runnables() <cr>",
  { desc = "Rust runnables", silent = true, noremap = true }
)
map(
  "n",
  "<leader>rem",
  "<cmd> lua require'rust-tools'.expand_macro.expand_macro() <cr>",
  { desc = "Rust expand macro", silent = true, noremap = true }
)
map(
  "n",
  "<leader>rmd",
  "<cmd> lua require'rust-tools'.move_item.move_item(false) <cr>",
  { desc = "Rust move down", silent = true, noremap = true }
)
map(
  "n",
  "<leader>rmu",
  "<cmd> lua require'rust-tools'.move_item.move_item(true) <cr>",
  { desc = "Rust move up", silent = true, noremap = true }
)
map(
  "n",
  "<leader>rhr",
  "<cmd> lua require'rust-tools'.hover_range.hover_range() <cr>",
  { desc = "Rust hover range", silent = true, noremap = true }
)
map(
  "n",
  "<leader>rha",
  "<cmd> lua require'rust-tools'.hover_actions.hover_actions() <cr>",
  { desc = "Rust hover actions", silent = true, noremap = true }
)
map(
  "n",
  "<leader>roc",
  "<cmd> lua require'rust-tools'.open_cargo_toml.open_cargo_toml() <cr>",
  { desc = "Rust open Cargo.toml", silent = true, noremap = true }
)
map(
  "n",
  "<leader>rpm",
  "<cmd> lua require'rust-tools'.parent_module.parent_module() <cr>",
  { desc = "Rust parent module", silent = true, noremap = true }
)
map(
  "n",
  "<leader>rjl",
  "<cmd> lua require'rust-tools'.join_lines.join_lines() <cr>",
  { desc = "Rust join lines", silent = true, noremap = true }
)

-- lspsaga
map("n", "<leader>cs", "<cmd>Lspsaga lsp_finder<cr>", { desc = "lsp_finder", silent = true, noremap = true })
map("n", "<leader>o", "<cmd>Lspsaga outline<cr>", { desc = "outline", silent = true, noremap = true })
map("n", "<leader>ci", "<cmd>Lspsaga incoming_calls<cr>", { desc = "incoming calls", silent = true, noremap = true })
map("n", "<leader>co", "<cmd>Lspsaga outgoing_calls<cr>", { desc = "Outgoing calls", silent = true, noremap = true })

-- dap and dap-ui
map(
  "n",
  "<leader>db",
  "<cmd>lua require'dap'.toggle_breakpoint()<cr>",
  { desc = "DAP Toggle breakpoint", silent = true, noremap = true }
)
map(
  "n",
  "<leader>dB",
  "<cmd>lua require'dap'.clear_breakpoints()<cr>",
  { desc = "DAP Clear breakpoints", silent = true, noremap = true }
)
map(
  "n",
  "<leader>dt",
  "<cmd>lua require'dap'.terminate()<cr>",
  { desc = "DAP Terminate session", silent = true, noremap = true }
)
map(
  "n",
  "<leader>dl",
  "<cmd>lua require'dap'.run_last()<cr>",
  { desc = "DAP run last session", silent = true, noremap = true }
)
map(
  "n",
  "<leader>dc",
  "<cmd>lua require'dap'.continue()<cr>",
  { desc = "DAP continue (launch/resume)", silent = true, noremap = true }
)
map(
  "n",
  "<F5>",
  "<cmd>lua require'dap'.continue()<cr>",
  { desc = "DAP continue (launch/resume)", silent = true, noremap = true }
)
map(
  "n",
  "<leader>do",
  "<cmd>lua require'dap'.step_over()<cr>",
  { desc = "DAP step over", silent = true, noremap = true }
)
map("n", "<F10>", "<cmd>lua require'dap'.step_over()<cr>", { desc = "DAP step over", silent = true, noremap = true })
map(
  "n",
  "<leader>di",
  "<cmd>lua require'dap'.step_into()<cr>",
  { desc = "DAP step into", silent = true, noremap = true }
)
map("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", { desc = "DAP step into", silent = true, noremap = true })
map("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", { desc = "DAP step out", silent = true, noremap = true })
map("n", "<F12>", "<cmd>lua require'dap'.step_out()<cr>", { desc = "DAP step out", silent = true, noremap = true })
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<cr>", { desc = "DAP REPL", silent = true, noremap = true })
map(
  "n",
  "<leader>dK",
  "<cmd>lua require'dap.ui.widgets'.hover()<cr>",
  { desc = "DAP widget hover", silent = true, noremap = true }
)

map("n", "<leader>duo", "<cmd>lua require('dapui').open()<cr>", { desc = "DAP UI open", silent = true, noremap = true })
map(
  "n",
  "<leader>duc",
  "<cmd>lua require('dapui').close()<cr>",
  { desc = "DAP UI close", silent = true, noremap = true }
)
map(
  "n",
  "<leader>dut",
  "<cmd>lua require('dapui').toggle()<cr>",
  { desc = "DAP UI toggle", silent = true, noremap = true }
)
