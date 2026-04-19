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
          "nordic",
          "cyberdream",
          "everforest",
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
          "github_dark",
          "github_dark_colorblind",
          "github_dark_default",
          "github_dark_dimmed",
          "github_dark_high_contrast",
          "github_dark_tritanopia",
          "monokai-pro",
          "riderdark",
          "jb",
          -- light themes
          "catppuccin-latte",
          "github_light",
          "github_light_colorblind",
          "github_light_default",
          "github_light_high_contrast",
          "github_light_tritanopia",
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

  {
    "realbucksavage/riderdark.vim",
    lazy = false,
    priority = 1000,
  },

  {
    "nickkadutskyi/jb.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      -- require("jb").setup({transparent = true})
      vim.cmd("colorscheme jb")
    end,
  },

  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  },

  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
  },

  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },
}
