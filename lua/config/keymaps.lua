local map = vim.keymap.set

-- Don't copy single characters using x
vim.keymap.set("n", "x", '"_x')

-- Split window
map("n", "sd", ":split<CR>", { desc = "Split window down" })
map("n", "sv", ":vsplit<CR>", { desc = "Split window right" })

-- Resize window
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
map("n", "<C-Right>", "<cmd> vertical resize -2<cr>", { desc = "Decrease window width" })

-- Move to another window
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Move to another buffer
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Move lines
map("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line up" })
map("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line down" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line down" })
map("i", "<A-j>", "<esc><cmd>m .+1<CR>==gi", { desc = "Move line up" })
map("i", "<A-k>", "<esc><cmd>m .-2<CR>==gi", { desc = "Move line down" })

-- Clear search
map({ "n", "i" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Remove trailing whitespace characters
map("n", "<leader><BS>", "<cmd>StripTrailingWhitespace<cr>", { desc = "Remove trailing whitespace" })

-- Plugins mapping configuration
-- LSP Config
map("n", "K", vim.lsp.buf.hover, { desc = "See information on hover" })
map("n", "gd", vim.lsp.buf.definition, { desc = "See definition" })
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "See code actions" })

-- CMP
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Autoformat" })

