function ColorMyPencils()
    -- Rose Pine Moon approximated color palette
    local base = "NONE"           -- transparent background
    local surface = "#2a273f"     -- slightly lighter background for UI elements
    local overlay = "#393552"     -- even lighter purple for selections, highlights
    local muted = "#6e6a86"       -- muted purple for less important text
    local subtle = "#908caa"      -- subtle lavender for secondary text
    local text = "#e0def4"        -- soft white-lavender for primary text
    local love = "#eb6f92"        -- pink for errors, important items
    local gold = "#f6c177"        -- warm gold for warnings, keywords
    local rose = "#ea9a97"        -- muted coral for strings, values
    local pine = "#3e8fb0"        -- teal for functions, methods
    local foam = "#9ccfd8"        -- light teal for operators, links
    local iris = "#c4a7e7"        -- lavender for constants, attributes
    
    -- Set each highlight group individually to avoid syntax errors
    vim.cmd("highlight Normal guibg=" .. base .. " guifg=" .. text)
    vim.cmd("highlight NormalFloat guibg=NONE guifg=" .. text)
    vim.cmd("highlight LineNr guibg=NONE guifg=" .. muted)
    vim.cmd("highlight CursorLine guibg=" .. surface)
    vim.cmd("highlight CursorLineNr guibg=NONE guifg=" .. rose)
    vim.cmd("highlight VertSplit guibg=NONE guifg=" .. overlay)
    
    vim.cmd("highlight Comment guifg=" .. muted)
    vim.cmd("highlight String guifg=" .. rose)
    vim.cmd("highlight Constant guifg=" .. iris)
    vim.cmd("highlight Identifier guifg=" .. foam)
    vim.cmd("highlight Function guifg=" .. pine)
    vim.cmd("highlight Statement guifg=" .. iris)
    vim.cmd("highlight Keyword guifg=" .. love)
    vim.cmd("highlight PreProc guifg=" .. love)
    vim.cmd("highlight Type guifg=" .. foam)
    vim.cmd("highlight Special guifg=" .. gold)
    
    vim.cmd("highlight Visual guibg=" .. overlay)
    vim.cmd("highlight Search guibg=" .. gold .. " guifg=" .. base)
    vim.cmd("highlight IncSearch guibg=" .. pine .. " guifg=" .. text)
    vim.cmd("highlight Pmenu guibg=" .. surface .. " guifg=" .. text)
    vim.cmd("highlight PmenuSel guibg=" .. overlay .. " guifg=" .. text)
    vim.cmd("highlight SpellBad guisp=" .. love .. " gui=undercurl")
    
    vim.cmd("highlight DiagnosticError guifg=" .. love)
    vim.cmd("highlight DiagnosticWarn guifg=" .. gold)
    vim.cmd("highlight DiagnosticInfo guifg=" .. pine)
    vim.cmd("highlight DiagnosticHint guifg=" .. iris)
    
    vim.cmd("highlight TabLine guibg=" .. overlay .. " guifg=" .. subtle)
    vim.cmd("highlight TabLineSel guibg=" .. iris .. " guifg=NONE")
    vim.cmd("highlight TabLineFill guibg=NONE guifg=NONE")
    vim.cmd("highlight StatusLine guibg=" .. surface .. " guifg=" .. text)
    vim.cmd("highlight StatusLineNC guibg=" .. surface .. " guifg=" .. muted)
    vim.cmd("highlight WildMenu guibg=" .. iris .. " guifg=NONE")
    
    -- Additional transparency settings
    vim.cmd("highlight SignColumn guibg=NONE")
    vim.cmd("highlight EndOfBuffer guibg=NONE")
    vim.cmd("highlight NonText guibg=NONE")
    vim.cmd("highlight FloatBorder guibg=NONE")
end

ColorMyPencils()
