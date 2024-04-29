return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    init = function()
      vim.cmd.colorscheme("catppuccin-frappe")
    end,
  },
  {
    "RRethy/vim-illuminate",
    init = function()
      require("illuminate").resume()
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    init = function()
      require("lualine").setup({
        options = {
          theme = "dracula",
        },
      })
    end,
  },
}
