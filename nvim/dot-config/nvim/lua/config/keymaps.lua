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

-- keep the screen centered when going to EOF
vim.keymap.set('n', 'G', 'Gzz', { desc = 'Goto EOF' })

-- disable highlighting
vim.keymap.set('n', '<leader>nh', '<cmd>noh<cr>', { desc = 'Disable Search Highlighting' })

-- alternative for switchting windows
vim.keymap.set('n', '<leader>w', '<c-w>', { desc = 'Switch Window Init' })

-- quit the current buffer
vim.keymap.set('n', '<leader>qq', '<cmd>bd<cr>', { desc = 'Quit Buffer' })

-- place empty line above/below without going into insert mode
vim.keymap.set('n', '<cr>', 'o<esc>', { desc = 'Empty Line Below' })
vim.keymap.set('n', '<s-cr>', 'O<esc>', { desc = 'Empty Line Above' })

--go to next/previous buffer with count support

-- cycle through quickfix list without focus
vim.keymap.set('n', '<a-n>', '<cmd>cnext<cr>', { desc = 'Go to next quickfix item' })
