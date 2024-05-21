local api = vim.api

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  group = augroup("highlight_yank"),
  callback = function ()
    vim.highlight.on_yank()
  end,
})

-- Fix conceallevel for json files
api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("json_conceal"),
  pattern = { "json", "jsonc", "json5" },
  callback = function ()
    vim.opt_local.conceallevel = 0
  end,
})

-- Autocreate dir when saving files
api.nvim_create_autocmd({ "BufWritePre" }, {
  group = augroup("auto_create_dir"),
  callback = function (event)
    if event.match:match("%w%w+:[\\/][\\/]") then
      return
    end
    local file = vim.uv.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})


