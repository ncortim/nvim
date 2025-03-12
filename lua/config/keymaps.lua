local keymap = vim.keymap

-- explore
-- vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search in highlights" })

-- move lines around when highlighted
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move line in visual mode down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move line in visual mode up" })

-- move line below and append it to current line with space
keymap.set("n", "J", "mzJ`z", { desc = "move line below and append it to current line with space" })

-- keep cursor in the middle when scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- allow search terms to be in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- keep copied highlighted text after copying
keymap.set("x", "<leader>p", [["_dP]])

-- copy to the system clipboard
-- keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- keymap.set("n", "<leader>Y", [["+Y]])

-- replace Esc for ctrl+c
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- test
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix navigator
keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the last word I was one
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make editing file executable for user group and others
keymap.set("n", "<leader>x", "<cmd>!chmod 700 %<CR>", { silent = true })

-- Nvimtree
-- keymap.set("n", "<leader>n", ":NvimTreeToggle<cr>", { desc = "Toggle [N]vimTree" })
-- keymap.set("n", "<leader>m", ":NvimTreeFocus<cr>")
-- keymap.set("n", "<C-m>", ":NvimTreeFocus<cr>")
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- Better window navigation
--  See `:help wincmd` for a list of all window commands
-- keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
--
-- Better window splitting
keymap.set("n", "<leader>wv", ":vsplit<cr>", { desc = "[W]indow Split [V]ertical" })
keymap.set("n", "<leader>wh", ":split<cr>", { desc = "[W]indow Split [H]orizontal" })

-- line indentation
keymap.set("v", "<", "<gv", { desc = "Indent left in visual mode" })
keymap.set("v", ">", ">gv", { desc = "Indent rigt in visual mode" })

-- comment line (toggle)
-- vim.keymap.set("v", "<c-m>", "gcc")

-- switch between buffers
-- keymap.set("n", "<A-p>", ":bprevious<cr>")
-- keymap.set("n", "<A-n>", ":bnext<cr>")

-- enclose word between single or double quotes
keymap.set("n", "<leader>'", "bi'<C-c>ea'<C-c>")
keymap.set("n", '<leader>"', 'bi"<C-c>ea"<C-c>')
keymap.set("v", "<leader>'", "xi'<C-c>pa'<C-c>")
keymap.set("v", '<leader>"', 'xi"<C-c>pa"<C-c>')

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- treesitter diagnostic remaps
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics [Q]uickfix list" })
