---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- === Language Servers ===
        "lua-language-server", -- For AstroNvim config editing
        "basedpyright",        -- For Python

        -- === Formatters ===
        "stylua",              -- Lua formatter
        "black",               -- Python formatter
        "isort",               -- Python import sorter

        -- === Linters ===
        "flake8",              -- Optional classic Python linter
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
