return {
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = {
          -- dark themes
          "cursor-dark",
          "cursor-dark-midnight",
          "nord",
          "cyberdream",
          "onedark",
          "kanagawa-dragon",
          "kanagawa-wave",
          "tokyonight",
          "tokyonight-moon",
          "tokyonight-night",
          "tokyonight-storm",
          "catppuccin-mocha",
          "catppuccin-macchiato",
          "catppuccin-frappe",
          "monokai-pro",
          -- light themes
          "catppuccin-latte",
          "tokyonight-day",
          "cursor-light",
          "cyberdream-light",
          "kanagawa-lotus",
          "kanagawa",
        },
        livePreview = true,
      })
    end,
  },

  {
    "duarteocarmo/cursor-themes",
    lazy = false,
    priority = 1000,
  },

  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "navarasu/onedark.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("onedark").setup()
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai-pro").setup()
    end,
  },
}
