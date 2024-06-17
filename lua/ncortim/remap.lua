vim.g.mapleader = " "

-- explore
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

-- move lines around when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move line below and append it to current line with space
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- allow search terms to be in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep copied highlighted text after copying
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy to the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- replace Esc for ctrl+c
vim.keymap.set("i", "<C-c>", "<Esc>")

-- test
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix navigator
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the last word I was one
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make editing file executable for user group and others
vim.keymap.set("n", "<leader>x", "<cmd>!chmod 700 %<CR>", { silent = true })

-- Nvimtree
vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<cr>")

-- Better window navigation
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")


-- comment line (toggle)
-- vim.keymap.set("v", "<c-m>", "gcc")


-- switch between buffers
vim.keymap.set("n", "<A-p>", ":bprevious<cr>")
vim.keymap.set("n", "<A-n>", ":bnext<cr>")


-- enclose word between single or double quotes
vim.keymap.set("n", "<leader>\'", "bi\'<C-c>ea\'<C-c>")
vim.keymap.set("n", "<leader>\"", "bi\"<C-c>ea\"<C-c>")
vim.keymap.set("v", "<leader>\'", "xi\'<C-c>pa\'<C-c>")
vim.keymap.set("v", "<leader>\"", "xi\"<C-c>pa\"<C-c>")

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
