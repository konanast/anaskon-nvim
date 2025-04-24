---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- === Python + Infra ===
      "python",
      "json",
      "yaml",
      "toml",
      "dockerfile",
      "bash",
      "requirements",

      -- === Web / Docs ===
      "xml",
      "markdown",
      "markdown_inline",

      -- === AstroNvim Core ===
      "lua",
      "vim",
      "query",

      -- === Data ===
      "csv",
    },
    auto_install = true,
  },
}
