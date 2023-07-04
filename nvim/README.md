# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

This configuration adds some extensions and customizations:

- neo-tree source selector winbar and mappings, navigation with
`h` and `l` and modified untracked files highlight.
- Customized lualine with words count, lines and count, encoding and filetype.
- relative-toggle.nvim to show relative numbers only in waiting events.
- barbar (buffferline) with <C-x> to delete buffer and <C-p> to
pick buffer by letter.
- Legendary command-palette-like search with `<space>P`.
- no-neck-pain (zen mode like) with width=120 using `<space>uz`.
- hop.nvim instead of leap and flit.
- LSP and Tresitter configured for C++ (with clangd,
the binary must be installed but could be installed using Mason)
, Rust (with rust-tools) and Python (`ruff` for diagnostics, `black`
for formatting and `pylyzer` for LSP, all available via Mason).
- lspsaga outline, finder, incoming calls and outgoing calls. 
- DAP, DAPUI and nvim-dap-virtual-text with mappings.
- vimtex for LaTeX.
- vim-pandoc and vim-pandoc-syntax.
- ltex-ls for text, Markrdown and LaTeX files.
- Marksman in LSP for Markdown.
- codespell configured for diagnostics in null-ls
(`codespell` must be installed in the system and accessible in the PATH).
- Supertab for snippets and completion.
- Telescope-fzf-native.
- Telescope projects with `<space>p`.
- Telescope LaTeX and math symbols with `<space>tl`.
- mellifluous and darker and warmer melange (default) colorschemes.
- nvim-scrollbar.
- Minimal notifications in nvim-notify.
- vim-illuminate.
- git-messenger and vim-gitgutter.
- diffview.nvim (`:DiffviewOpen`, `DiffviewFileHistory`): open git diff and
file history view in new tab.
- vim-mundo (undo tree).
- telescope-undo for Telescope undo tree changes with `<leader>tu`.
- targets.nvim (new selection targets, like parenthesis).
- ferret (powerful find and replace).
- vim-abolish (`:Abolish`, `:Subvert` and coercion).
- vim-repeat (better dot operator).
- splitjoin.vim (`gS` to split and `gJ` to join).
- vim-matchup for better `%`.
- `https://github.com/hiphish/rainbow-delimiters.nvim` for colorized parenthesis.
- boole to cycle among boolean values.
- tint to tint inactive windows.
- FeMaco for float buffers in embedded other languages code blocks with `<leader>ce`.
- nvim-spider for subword and skipping punctuation `w,e,b,ge` movements.
