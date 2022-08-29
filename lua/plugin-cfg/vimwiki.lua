if vim.fn.has('macunix') then
vim.g.vimwiki_list = {
  {
    path = '/mnt/windows_share/Notes',
    syntax = 'markdown',
    ext = '.md',
    -- autogenerate diary index
    auto_diary_index = 1
  }
}
else
vim.g.vimwiki_list = {
  {
    path = '/mnt/windows_share/Notes',
    syntax = 'markdown',
    ext = '.md',
    -- autogenerate diary index
    auto_diary_index = 1
  }
}
end
