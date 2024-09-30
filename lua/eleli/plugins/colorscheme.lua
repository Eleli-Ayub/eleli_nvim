return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = { style = "moon" },

  -- Define custom highlights for Pmenu and Lazy menu
  config = function()
    vim.api.nvim_exec([[
      highlight Pmenu guibg=#2e3440 guifg=#d8dee9
      highlight PmenuSel guibg=#3b4252 guifg=#88c0d0
      highlight PmenuSbar guibg=#434c5e
      highlight PmenuThumb guibg=#4c566a
      highlight LazyNormal guibg=#3b4252 guifg=#d8dee9
      highlight LazyBorder guibg=#2e3440 guifg=#88c0d0
    ]], false)
  end,
}

