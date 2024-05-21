return {
  -- {
  --   "catppuccin/nvim",
  --   lazy = false,
  --   name = "catppuccin",
  --   priority = 1000,
  --   init = function ()
  --     vim.cmd.colorscheme("catppuccin-macchiato")
  --   end
  -- },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.everforest_enable_italic = true
      if vim.fn.has("termguicolors") == 1 then
        vim.o.termguicolors = true
      end
      vim.o.background = "light"
      vim.g.everforest_background = "soft"
      vim.cmd.colorscheme("everforest")
    end
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
          theme = "gruvbox_light",
        },
      })
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    init = function()
      require("colorizer").setup({
        "*",
        css = {
          RGB = true,
          RRGGBB = true,
          names = false,   -- Doesn't work
          RRGGBBAA = true, -- Doesn't work well, but to much rgba and hsla
          rgb_fn = true,
          hsl_fn = true,
        },
      })
    end
  },
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    init = function ()
      require("notify").setup({
        stages = "fade_in_slide_out",
        timeout = 1500,
        background_colour = "#fefefe",
      })
      vim.notify = require("notify")
    end
  },
}
