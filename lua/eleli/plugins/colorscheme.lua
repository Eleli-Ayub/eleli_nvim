return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  name = "kanagawa",
  opts = {
    theme = "wave", -- wave, dragon, lotus
    background = {
      dark = "wave",
      light = "lotus",
    },
    styles = {
      functions = { bold = true },
      keywords = { italic = true },
    },
    integrations = {
      gitsigns = true,
      telescope = true,
      indent_blankline = { enabled = true },
      mason = true,
      mini = true,
      noice = true,
      notify = true,
      treesitter = true,
      which_key = true,
      lsp_trouble = true,
      neotree = true,
    },
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd("colorscheme kanagawa")
  end,
}
