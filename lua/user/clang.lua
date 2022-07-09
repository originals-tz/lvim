local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  require "lsp_signature".on_attach(
    {
      bind = true, -- This is mandatory, otherwise border config won't get registered.
      handler_opts = { border = "rounded" },
    },
    bufnr)

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', '<C-]>', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<C-;>', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>lr', vim.lsp.buf.references, bufopts)
end

-- require('lspconfig')['ccls'].setup { on_attach = on_attach, }
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

require("clangd_extensions").setup {
  server = {
    -- options to pass to nvim-lspconfig
    on_attach = on_attach,

    cmd = { "clangd", "--background-index", "--suggest-missing-includes",

      "--all-scopes-completion", "--completion-style=detailed",
    },
    --    "--compile-commands-dir=" .. vim.g.cmake_build_dir }, -- custom build dir
    capabilities = capabilities,
  },
  extensions = {
    -- defaults:
    -- Automatically set inlay hints (type hints)
    autoSetHints = true,
    -- These apply to the default ClangdSetInlayHints command
    inlay_hints = {
      -- Only show inlay hints for the current line
      only_current_line = false,
      -- Event which triggers a refersh of the inlay hints.
      -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
      -- not that this may cause  higher CPU usage.
      -- This option is only respected when only_current_line and
      -- autoSetHints both are true.
      only_current_line_autocmd = "CursorHold",
      -- whether to show parameter hints with the inlay hints or not
      show_parameter_hints = true,
      -- prefix for parameter hints
      parameter_hints_prefix = "<- ",
      -- prefix for all the other hints (type, chaining)
      other_hints_prefix = "=> ",
      -- whether to align to the length of the longest line in the file
      max_len_align = false,
      -- padding from the left if max_len_align is true
      max_len_align_padding = 1,
      -- whether to align to the extreme right or not
      right_align = false,
      -- padding from the right if right_align is true
      right_align_padding = 7,
      -- The color of the hints
      highlight = "Comment",
      -- The highlight group priority for extmark
      priority = 100,
    },
  }
}
