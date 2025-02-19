-- disable newline comment continuation
vim.cmd('autocmd BufEnter * set formatoptions-=ro')

-- enable wrapping for certain filetypes
vim.cmd('autocmd BufReadPost *.txt setlocal wrap')
vim.cmd('autocmd BufReadPost *.typ setlocal wrap')
vim.cmd('autocmd BufReadPost *.md setlocal wrap')

-- automatically open typst preview
vim.cmd('autocmd BufReadPost *.typ TypstPreview')
