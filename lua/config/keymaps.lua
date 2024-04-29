local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Don't copy single characters using x
keymap.set("n", "x", '"_x')

-- Split window
keymap.set("n", "sd", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)

-- Renaming
keymap.set("n", "<Leader>rn", function ()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, {expr = true})

-- Move lines
keymap.set("n", "<A-j>", "<cmd>m .+1<CR>==", opts)
keymap.set("n", "<A-k>", "<cmd>m .-2<CR>==", opts)
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

