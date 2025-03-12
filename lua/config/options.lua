-- see all options with command
-- :set all
local opt = vim.opt

-- --------------
-- APPEARENCE
-- --------------
-- set line number
opt.number = true
-- set relative line number
opt.relativenumber = true
-- set column color
opt.colorcolumn = "80"
-- allow full color support in the terminal
opt.termguicolors = true
-- when debugging
opt.signcolumn = "yes"
-- highlight current line
opt.cursorline = true
-- command height
opt.cmdheight = 1
-- set width of line number
-- opt.numberwidth = 2
-- change gui cursor
-- opt.guicursor =	"n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- ----------------------
-- TAB and INDENTATION
-- ----------------------
-- set tab to 4 spaces
opt.tabstop = 4
-- numer of spaces when hitting tab during insert mode
opt.softtabstop = 4
-- set number of spaces for each level on indentation
opt.shiftwidth = 4
-- converts tabs into spaces
opt.expandtab = true
-- allows for auto indentation
opt.smartindent = true
-- allows for indentation when line breaks
opt.breakindent = true
-- wrap lines
opt.wrap = true

-- ---------
-- SEARCH
-- ---------
-- highlight search incrementally
opt.incsearch = true
-- highlight search
opt.hlsearch = false
-- ignore case
opt.ignorecase = true
-- when using case, then identifythem
opt.smartcase = true

-- ------------
-- BEHAVIOUR
-- ------------
-- scroll number of lines before hitting the bottom
opt.scrolloff = 10
-- number of columns to keep to the lft/right of cursor
opt.sidescrolloff = 20
-- define manually how the autocompletion behaves
-- opt.completeopt = "menuone,noinsert,noselect"
-- change buffers without saving
-- opt.hidden = true
-- make noise when error
opt.errorbells = false
-- no default swap files
opt.swapfile = false
-- time to wait before writing to swap file
-- set time to faster completions in miliseconds
opt.updatetime = 50
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- disable backup file creation
opt.backup = false
-- prevent making a backup before overwriting a file
-- opt.writebackup = false
-- save undo
-- opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
opt.undodir = vim.fn.expand("~/.nvim/undodir")
-- undo file
opt.undofile = true
-- change backspace behaviour
-- opt.backspace = "indent,eol,start"
-- split terminal window to the right and focus on it
opt.splitright = true
-- if new pane added, then split and focus to the bottom
opt.splitbelow = true
-- autmatically change the directory when a file is opened
opt.autochdir = false
-- treat words with hypens as full words
-- opt.iskeyword:append("-")
-- Enable mouse mode, can be useful for resizing splits for example!
-- opt.mouse = 'a'
-- make mouse avaiable in all modes
opt.mouse:append("a")
-- add registry + to the clipboard
opt.clipboard:append("unnamedplus")
-- modify the buffer you are in
-- opt.modifiable = true
-- buffer encoding
opt.encoding = "UTF-8"
-- hide mode display
opt.showmode = false
-- show concealed characters in mardown files
-- opt.conceallevel = 0
-- set timeout for mapped sequences to 1 second
-- opt.timeoutlen = 1000
