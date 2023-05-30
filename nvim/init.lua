-- bootstrap lazy.nvim, Lazyvim and your plugins
require("config.lazy")

-- change neo-tree untracked files highlight
vim.cmd("hi NeoTreeGitUntracked guifg=#eebb15")
