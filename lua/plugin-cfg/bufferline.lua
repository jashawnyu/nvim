local status, bufferline = pcall(require, "bufferline")
if not status then
  vim.notify("Can't find bufferline")
end

-- configuration

bufferline.setup({
  options = {
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "center",
      },
    },
    
  },

})
