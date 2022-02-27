require'nvim-autopairs'.setup{
}

local autopairs_cmp = require('nvim-autopairs.completion.cmp')
require("cmp").event:on( 'confirm_done', autopairs_cmp.on_confirm_done({ map_char = { tex = '' } }))
