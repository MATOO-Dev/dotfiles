-- enable relative line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- ensure tabs are 4 spaces wide, and are actually tabs instead of spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = false

-- disable wrap by default, but if wrap is manually enabled, break between words
vim.opt.wrap = false
vim.opt.linebreak = true

-- ignore capitalization when searching etc, unless specified
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- automatically handle indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- folding
vim.opt.foldcolumn = "0"
vim.opt.foldenable = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.lsp.foldexpr()"
vim.o.foldtext = ""
vim.opt.fillchars:append({fold = " "})

-- dont show insert/visual/etc mode, deferred to status bar plugin
vim.opt.showmode = false

-- thin cursor in insert, block otherwise, and make it blink
vim.opt.guicursor = "n-v-r:block,i:ver25,a:blinkwait700-blinkoff400-blinkon250"

-- disable automatic backups, instead give undotree more access
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- enable search highlighting and incremental search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- enable colors in TUI and pull them from terminal of possible
vim.opt.termguicolors = true

-- minimum cursor distance to top/bottom when scrolling (unless BOF/EOF)
vim.opt.scrolloff = 5

-- always show sign column
vim.opt.signcolumn = "yes"

-- show bat at n chars to indicate long lines
vim.opt.colorcolumn = "81"

-- enable @ in file names
vim.opt.isfname:append('@-@')

-- fast updatetime
vim.opt.updatetime = 50

-- higher conceallevel for obsidian, typst, etc.
vim.opt.conceallevel = 2
vim.api.nvim_set_option('clipboard', 'unnamed')
