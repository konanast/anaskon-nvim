-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here


-- Set the PYTHONPATH automatically from virtualenv
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    local venv = os.getenv("VIRTUAL_ENV")
    if venv then
      vim.env.PYTHONPATH = venv .. "/bin/python"
    end
  end,
})

-- Auto-format Python files on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function()
    vim.cmd("Format")
  end,
})

-- Optional: Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

-- Optional: Set wrap for markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- Optional: Change formatoptions on insert leave (recommended for Python)
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*.py",
  callback = function()
    vim.opt_local.formatoptions:remove({ "o", "r" }) -- disable auto-commenting on new lines
  end,
})
