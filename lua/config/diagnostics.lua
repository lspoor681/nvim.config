vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- Symbol before message
    spacing = 4,
  },
  signs = true, -- Show signs in the gutter
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Customize signs for errors and warnings
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
