-- Definir los colores
local colors = {
    bg = "#2E3440",
    fg = "#D8DEE9",
    grey = "#4C566A",
    orange = "#D08770",
    red = "#BF616A",
    cyan = "#5E81AC",
    green = "#A3BE8C",
    yellow = "#EBCB8B",
    darkgrey = "#434C5E"
}

-- Configurar los grupos de resaltado
local function setup_highlight(group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    vim.cmd(string.format("highlight %s %s %s %s", group, style, fg, bg))
end

local function setup()
    vim.o.background = "dark"
    vim.cmd("syntax on")

    -- Grupos de resaltado
    local highlights = {
        Normal = { fg = colors.fg, bg = colors.bg },
        Comment = { fg = colors.grey },
        Constant = { fg = colors.orange },
        Identifier = { fg = colors.red },
        Statement = { fg = colors.cyan },
        PreProc = { fg = colors.yellow },
        Type = { fg = colors.green },
        Special = { fg = colors.yellow },
        Underlined = { style = "underline" },
        Todo = { fg = colors.bg, bg = colors.yellow, style = "bold" },
        CursorLine = { bg = colors.darkgrey },
        LineNr = { fg = colors.grey },
        StatusLine = { fg = colors.fg, bg = colors.darkgrey, style = "bold" },
        Visual = { bg = colors.darkgrey, style = "reverse" },
        Search = { fg = colors.bg, bg = colors.yellow }
    }

    for group, color in pairs(highlights) do
        setup_highlight(group, color)
    end
end

return {
    setup = setup
}
