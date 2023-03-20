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

-- C-x to close buffer
map("n", "<C-x>", "<cmd>bdelete<cr>", { desc = "close buffer", silent = true, noremap = true })

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
  "<leader>dc",
  "<cmd>lua require'dap'.continue()<cr>",
  { desc = "DAP continue (launch/resume)", silent = true, noremap = true }
)
map(
  "n",
  "<leader>do",
  "<cmd>lua require'da'.step_over()<cr>",
  { desc = "DAP step over", silent = true, noremap = true }
)
map(
  "n",
  "<leader>di",
  "<cmd>lua require'dap'.step_into()<cr>",
  { desc = "DAP step into", silent = true, noremap = true }
)
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<cr>", { desc = "DAP REPL", silent = true, noremap = true })

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
