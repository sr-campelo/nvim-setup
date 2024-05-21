# Sr. Campelo Nvim Setup
## Relevant Organization
/lua
|-/config
  |-configload.lua
|-/plugins
init.lua

init.lua load automatically all the plugins and the config (turned into a table in configload.lua)

## Plugins
- Colorscheme: [Everforest](https://github.com/sainnhe/everforest) (Soft Light)
- Another UI plugins: [Illuminate](https://github.com/RRethy/vim-illuminate), [Lualine](https://github.com/nvim-lualine/nvim-lualine), [Colorizer](https://github.com/norcalli/nvim-colorizer), [Notify](https://github.com/rcarriga/nvim-notify), [Which-Key](https://github.com/folke/which-key.nvim)
- (Fuzzy)Searcher: [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- File Manager: [NeoTree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Some MiniImprovements: [Mini](https://github.com/echasnovski/mini.nvim)
    - Activated: Hipatterns, Operators, Pairs, Indentscope, Comment
- Better searching: [hlslens](https://github.com/kevinhwang91/nvim-hlslens)
- Language highlighter: [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Lsp configuration: [Mason](https://github.com/williamboman/mason.nvim), [Mason-Lspconfig](https://github.com/williamboman/mason-lspconfig.nvim), [Lspconfig](https://github.com/neovim/nvim-lspconfig)
- Completions: [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp),[nvim-cmp](https://github.com/hrsh7th/nvim-cmp), [LuaSnip](https://github.com/L3MON4d3/LuaSnip)
- Git helper: [gitsigns](https://github.com/lewis6991/gitsigns.nvim)

## TODO
- [ ] <Leader>gf (cmp command) never works at the first time
