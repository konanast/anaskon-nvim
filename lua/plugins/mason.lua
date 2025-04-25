---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- === Language Servers ===
        "lua-language-server", -- For AstroNvim config editing
        "basedpyright",        -- For Python

        -- === Formatters ===
        "stylua",              -- Lua formatter

        -- === Linters ===
        "ruff",                -- Fast Python linter
        "mypy",                -- Python type checker

        -- === Debuggers ===
        "debugpy",             -- Python debugger

        -- === Syntax/Other ===
        "tree-sitter-cli",     -- Required for syntax highlighting
      },
    },
  },
}
