vim.opt.spell = true
vim.opt.spelllang = "en"

--Keybindings for Spell Checking:
--[s → Go to the previous misspelled word.
--]s → Go to the next misspelled word.
--z= → Show spelling suggestions for the current word.
--zg → Add the word to your dictionary.
--zw → Mark the word as incorrect.

-- Enable line numbers in Netrw/ file explorer in neovim
vim.cmd([[
    autocmd FileType netrw setlocal number
    autocmd FileType netrw setlocal relativenumber
]])


-- this down lines are from primeagen i just copy
-- Navigation vim + tmux panes better
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

--vim.o.statusline = '%F %m%r%h%w%=' -- this is for file path in statusline all the time  (there is a diffrence between -f or -F)
vim.o.statusline = '%F %m%r%h%w %=%y %{FugitiveStatusline()} %l:%c '

vim.opt.guicursor = ""

-- mouse off
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })
vim.opt.mouse = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 9
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.opt.clipboard = "unnamedplus"
vim.opt.clipboard = "unnamed"
