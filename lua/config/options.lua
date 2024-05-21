vim.g.mapleader = " "

vim.g.autoformat = true

local opt = vim.opt

-- Clipboard config
if not vim.env.SSH_TTY then
  opt.clipboard = "unnamedplus"
end

-- Custom config
opt.cursorline = true -- Highlight cursor line
opt.expandtab = true  -- Use spaces instead tabs
opt.formatoptions = "jcroqlnt"
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.mouse = ""     -- Disable mouse mode
opt.number = true  -- Print line number
opt.list = true    -- Show invisible characters
opt.pumblend = 15  -- Popup blend
opt.pumheight = 10 -- Maximum popup lines
opt.relativenumber = true
opt.scrolloff = 7
opt.shiftround = true  -- Round indent
opt.shiftwidth = 2     -- Size of an indent
opt.smartindent = true -- Insert indents automatically
opt.splitbelow = true  -- New windows below the current one
opt.wildmode = "longest:full,full"
opt.termguicolors = true -- True color support
opt.wrap = true -- Disable line wrap


