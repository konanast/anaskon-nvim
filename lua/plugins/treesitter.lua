---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- === Python & related ===
      "python",
      "json",
      "yaml",
      "toml",
      "requirements", -- optional; may not be an actual parser

      -- === Web (Django templates, APIs) ===
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",          -- if working with React
      "xml",
      "markdown",
      "markdown_inline",

      -- === Docker / Infrastructure ===
      "dockerfile",
      "bash",

      -- === AstroNvim / Lua ===
      "lua",
      "vim",
      "query",

      -- === Files and data ===
      "csv",

      -- add any others you work with
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  },
}
