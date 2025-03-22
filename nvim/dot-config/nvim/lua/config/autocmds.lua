-- disable newline comment continuation
vim.cmd('autocmd BufEnter * set formatoptions-=o')
-- t = auto-wrap using textwidth
-- c = auto-wrap using textwidth and enter comment leader
-- r = continue comments on enter
-- o = continue comments on o/O

-- enable wrapping for certain filetypes
vim.cmd('autocmd BufReadPost *.txt setlocal wrap')
vim.cmd('autocmd BufReadPost *.typ setlocal wrap')
vim.cmd('autocmd BufReadPost *.md setlocal wrap')

-- automatically open typst preview
vim.cmd('autocmd BufReadPost *.typ TypstPreview')
