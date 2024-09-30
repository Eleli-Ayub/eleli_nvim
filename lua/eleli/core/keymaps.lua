vim.g.mapleader = " "

local keymap = vim.keymap --for consistensie

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- keymap.set("n", "x", '"_x')
-- delete single character without copying into register

-- increlent/decrement number
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Copy (yank) text
keymap.set("n", "<leader>yy", "yy", { desc = "Copy (yank) a line" }) -- copy a line in normal mode
keymap.set("v", "<leader>y", "y", { desc = "Copy (yank) selected text" }) -- copy selected text in visual mode

-- Cut (delete) text
keymap.set("n", "<leader>dd", "dd", { desc = "Cut (delete) a line" }) -- cut a line in normal mode
keymap.set("v", "<leader>d", "d", { desc = "Cut (delete) selected text" }) -- cut selected text in visual mode

-- Paste text
keymap.set("n", "<leader>p", "p", { desc = "Paste after cursor" }) -- paste after cursor in normal mode
keymap.set("n", "<leader>P", "P", { desc = "Paste before cursor" }) -- paste before cursor in normal mode
keymap.set("v", "<leader>p", "p", { desc = "Paste and replace selected text" }) -- paste and replace selected text in visual mode
