local status, comment = pcall(require, "Comment")
if not status then
  vim.notify("Can't find Comment")
  return
end

comment.setup(require('keybindings').comment)
