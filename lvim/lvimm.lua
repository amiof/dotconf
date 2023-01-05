----config for lua lvim

---keymap 
--

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
vim.keymap.set("i","jj","<esc>",{noremap=true})
vim.keymap.set("i","jk","<esc>",{noremap=true})
vim.keymap.set("n", "n", ":BufferLineCycleNex<cr>", { silent = true })
vim.keymap.set("n", "m", ":BufferLineCyclePrev<cr>", { silent = true })
vim.keymap.set("n", "\\", ":vsplit<cr>", { silent = true })
vim.keymap.set("n", "|", ":split<cr>", { silent = true })
vim.keymap.set("n", "Tn", ":tabnew<cr>", { silent = true })
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.opt.hlsearch = true
vim.opt.mouse = "a"
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines



lvim.plugins = {
  { "olimorris/onedarkpro.nvim" },
  {"NLKNguyen/papercolor-theme"},
  {"luisiacc/gruvbox-baby"},
  {"xiyaowong/nvim-transparent"},
  {"pangloss/vim-javascript"},
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "F", ":HopChar1<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "f", ":HopWord<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "t", ":HopLine<cr>", { silent = true })
    end,
  },
{
  "echasnovski/mini.map",
  branch = "stable",
  config = function()
    require('mini.map').setup()
    local map = require('mini.map')
    map.setup({
      integrations = {
        map.gen_integration.builtin_search(),
        map.gen_integration.diagnostic({
          error = 'DiagnosticFloatingError',
          warn  = 'DiagnosticFloatingWarn',
          info  = 'DiagnosticFloatingInfo',
          hint  = 'DiagnosticFloatingHint',
        }),
      },
      symbols = {
        encode = map.gen_encode_symbols.dot('4x2'),
      },
      window = {
        side = 'right',
        width = 20, -- set to 1 for a pure scrollbar :)
        winblend = 15,
        show_integration_count = false,
      },
    })
  end
},
{
  "nacro90/numb.nvim",
  event = "BufRead",
  config = function()
  require("numb").setup {
    show_numbers = true, -- Enable 'number' for the window while peeking
    show_cursorline = true, -- Enable 'cursorline' for the window while peeking
  }
  end,
},{
  "p00f/nvim-ts-rainbow",
},
{
  "folke/lsp-colors.nvim",
  event = "BufRead",
},
  {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup()
  end,
},
{
  "andymass/vim-matchup",
  event = "CursorMoved",
  config = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
  end,
},
}



----config for grubox theme
--
-- Example config in Lua
vim.g.gruvbox_baby_function_style = "NONE"
--vim.g.gruvbox_baby_keyword_style = "italic"

-- Each highlight group must follow the structure:
ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
-- See also :h highlight-guifg
-- Example:
--vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}

-- Enable telescope theme
vim.g.gruvbox_baby_telescope_theme = 1

-- Enable transparent mode
vim.g.gruvbox_baby_transparent_mode = 1


-- Load the colorscheme
--vim.cmd[[colorscheme gruvbox-baby]]





----background transparen 
--
--
--
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})



----config syntax highlight javascript
vim.g.javascript_plugin_jsdoc = 1
vim.g.javascript_plugin_ngdoc = 1
vim.gjavascript_plugin_flow = 1

