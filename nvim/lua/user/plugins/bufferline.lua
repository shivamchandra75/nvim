return{
  'akinsho/bufferline.nvim',
    pin = true,
  version = "*",
  enabled = vim.g.vscode == nil,
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts =  {
    options = {
      mode = "buffers", -- set to "tabs" to only show tabpages instead
      numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        indicator = {
          icon = "▎", -- this should be omitted if indicator style is not 'icon'
          style = "icon", -- | 'underline' | 'none',
        },
        buffer_close_icon = "",
        modified_icon = "●",
        -- close_icon = "",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        tab_size = 18,
        diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        truncate_names = true, -- whether or not tab names should be truncate
      },
    }

}
