-- bootstrap lazy.nvim, Lazyvim and your plugins
require("config.lazy")

-- change neo-tree untracked files highlight
vim.cmd("hi NeoTreeGitUntracked guifg=#eebb15")

-- codespell with nvim-lint for specified and all filetypes
vim.cmd('autocmd BufEnter,BufWritePost,InsertLeave * lua require("lint").try_lint()')
vim.cmd('autocmd BufEnter,BufWritePost,InsertLeave * lua require("lint").try_lint({"codespell"})')
