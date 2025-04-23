---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")

    opts.sources = require("astrocore").list_insert_unique(opts.sources, {
      -- === Lua ===
      nls.builtins.formatting.stylua,

      -- === Python: Formatting ===
      nls.builtins.formatting.black,
      nls.builtins.formatting.isort,

      -- === Python: Linting / Diagnostics ===
      nls.builtins.diagnostics.ruff.with({
        extra_args = { "--line-length=88" }, -- optional
      }),
      nls.builtins.diagnostics.bandit,
      nls.builtins.diagnostics.mypy,

      -- Optional: keep if you want classic linting too
      -- nls.builtins.diagnostics.flake8.with({
      --   extra_args = { "--max-line-length=88" },
      -- }),

      -- === Markdown / Web (optional) ===
      -- nls.builtins.formatting.prettier.with({
      --   filetypes = { "html", "json", "yaml", "markdown" },
      -- }),
    })
  end,
}
