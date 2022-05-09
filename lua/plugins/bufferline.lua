require('bufferline')

-- format as "<id>. <file-name>"
local tabname_format = function (opts)
  return string.format('%s.', opts.ordinal)
end

require('bufferline').setup({
  options = {
    always_show_bufferline = false,
    numbers = tabname_format,
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    indicator_icon = "▎",
    separator_style = {" ", " "},
    -- Don't show bufferline over vertical, unmodifiable buffers
    offsets = {{
        filetype = 'NvimTree',
        text = 'File Explorer',
        highlight = 'Directory'
    }},
  },
   custom_areas = {
     right = function()
       local result = {{text = "buffers", guifg = "#ffffff"}}
       return result
     end,
   },
})
