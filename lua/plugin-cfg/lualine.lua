local status, lualine = pcall(require, 'lualine')
if not status then
    vim.notify('Can find lualine')
    return
end


lualine.setup({
    options = {
        -- 指定皮肤
        -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
        theme = 'powerline_dark',

        -- 分割线
        component_separators = {
            left = '|',
            right = '|',
        },
        -- https://github.com/ryanoasis/powerline-extra-symbols
       -- section_separators = {
       --     left = ' ',
       --     right = '',
       -- },
    },
    extensions = { 'nvim-tree' },
    sections = {
        lualine_c = {
            'filename',
            {
                'lsp_progress',
                spinner_symbols = { ' ', ' ', ' ', ' ', ' ', ' ' },
            },
        },
        lualine_x = {
            'filesize',
            {
                'fileformat',
                -- symbols = {
                --   unix = '', -- e712
                --   dos = '', -- e70f
                --   mac = '', -- e711
                -- },
                symbols = {
                    unix = 'LF',
                    dos = 'CRLF',
                    mac = 'CR',
                },
            },
            'encoding',
            'filetype',
        },
    },
})

