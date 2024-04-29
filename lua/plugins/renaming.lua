return {
  {
    "smjonas/inc-rename.nvim",
    init = function()
      require("inc_rename").setup()
    end,
  },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    init = function()
      require("refactoring").setup()
    end,
  },
}
