-- leader
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- keep the screen centered when jumping up/down
vim.keymap.set('n', '<c-u>', '<c-u>zz', { desc = 'Page Up' })
vim.keymap.set('n', '<c-d>', '<c-d>zz', { desc = 'Page Down' })
vim.keymap.set('n', '<c-f>', '<c-f>zz', { desc = 'Page Forward' })
vim.keymap.set('n', '<c-b>', '<c-b>zz', { desc = 'Page Backward' })

--keep the screen centered when going to next/previous match
vim.keymap.set('n', 'n', 'nzz', { desc = 'Next Match' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Previous Match' })

--keep the screen centered when going back/forwards through cursor locations
vim.keymap.set('n', '<c-i>', '<c-i>zz', { desc = 'Next Cursor Location' })
vim.keymap.set('n', '<c-o>', '<c-o>zz', { desc = 'Previous Cursor Location' })

-- keep the screen centered when going to EOF
vim.keymap.set('n', 'G', 'Gzz', { desc = 'Goto EOF' })

-- disable highlighting
vim.keymap.set('n', '<leader>nh', '<cmd>noh<cr>', { desc = 'Disable Search Highlighting' })

-- alternative for switchting windows
vim.keymap.set('n', '<leader>w', '<c-w>', { desc = 'Switch Window Init' })

-- quit the current buffer
vim.keymap.set('n', '<leader>q', '<cmd>bd<cr>', { desc = 'Quit Buffer' })

-- place empty line above/below without going into insert mode
vim.keymap.set('n', '<cr>', 'o<esc>', { desc = 'Empty Line Below' })
vim.keymap.set('n', '<s-cr>', 'O<esc>', { desc = 'Empty Line Above' })

--go to next/previous buffer with count support
vim.keymap.set('n', '<c-s-k>', '":<c-u>" .. v:count1 .. "bnext<cr>"', { expr = true, desc = 'Next Buffer' })
vim.keymap.set('n', '<c-s-j>', '":<c-u>" .. v:count1 .. "bprev<cr>"', { expr = true, desc = 'Previous Buffer' })
vim.keymap.set('n', '<c-n>', '":<c-u>" .. v:count1 .. "bnext<cr>"', { expr = true, desc = 'Next Buffer' })
vim.keymap.set('n', '<c-p>', '":<c-u>" .. v:count1 .. "bprev<cr>"', { expr = true, desc = 'Previous Buffer' })

-- cycle through quickfix list without focus
vim.keymap.set('n', '<a-n>', '<cmd>cnext<cr>', { desc = 'Go to next quickfix item' })

-- lsp actions
vim.keymap.set('n', '<f2>', vim.lsp.buf.rename, { desc = 'Rename symbol' })
