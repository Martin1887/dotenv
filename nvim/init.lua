vim.g.FerretMap = 0

-- bootstrap lazy.nvim, Lazyvim and your plugins
require("config.lazy")

-- change neo-tree untracked files highlight
vim.cmd("hi NeoTreeGitUntracked guifg=#eebb15")

-- codespell with nvim-lint for specified and all filetypes
vim.cmd('autocmd BufEnter,BufWritePost,InsertLeave * lua require("lint").try_lint()')
vim.cmd('autocmd BufEnter,BufWritePost,InsertLeave * lua require("lint").try_lint({"codespell"})')

local group = vim.api.nvim_create_augroup("PersistedHooks", {})

vim.api.nvim_create_autocmd({ "User" }, {
  pattern = "PersistedTelescopeLoadPre",
  group = group,
  callback = function(session)
    -- Save the currently loaded session
    require("persisted").save({ session = vim.g.persisted_loaded_session })

    -- Delete all of the open buffers
    vim.api.nvim_input("<ESC>:%bd!<CR>")
  end,
})
