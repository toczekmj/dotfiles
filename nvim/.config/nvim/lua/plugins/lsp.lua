return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- Merge includePackageJsonAutoImports into LazyVim's vtsls config (don't replace it)
    local vtsls = opts.servers.vtsls or {}
    local ts = vtsls.settings and vtsls.settings.typescript or {}
    local js = vtsls.settings and vtsls.settings.javascript or {}
    opts.servers.vtsls = vim.tbl_deep_extend("force", vtsls, {
      init_options = vim.tbl_deep_extend("force", vtsls.init_options or {}, {
        preferences = vim.tbl_deep_extend("force", (vtsls.init_options or {}).preferences or {}, {
          includePackageJsonAutoImports = "on",
        }),
      }),
      settings = vim.tbl_deep_extend("force", vtsls.settings or {}, {
        typescript = vim.tbl_deep_extend("force", ts, {
          preferences = vim.tbl_deep_extend("force", ts.preferences or {}, {
            includePackageJsonAutoImports = "on",
          }),
        }),
        javascript = vim.tbl_deep_extend("force", js, {
          preferences = vim.tbl_deep_extend("force", js.preferences or {}, {
            includePackageJsonAutoImports = "on",
          }),
        }),
      }),
    })
    return opts
  end,
}
