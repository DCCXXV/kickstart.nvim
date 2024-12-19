vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "quasar"

local colors = {
	bg = "#171717",
	bg_light = "#202020",
	bg_lighter = "#252525",
	bg_lightest = "#3d3d3d",
	fg = "#f2f0e3",
	fg_dark = "#a7a69f",
	green = "#57ffbd",
	orange = "#fe7457",
	yellow = "#ffd357",
}

local highlights = {
	-- Editor UI
	Normal = { fg = colors.fg, bg = colors.bg },
	NormalFloat = { fg = colors.fg, bg = colors.bg_light },
	Visual = { bg = colors.bg_lightest },
	Search = { fg = colors.bg, bg = colors.green },
	IncSearch = { fg = colors.bg, bg = colors.orange },
	Cursor = { fg = colors.bg, bg = colors.green },
	CursorLine = { bg = colors.bg_light },
	CursorLineNr = { fg = colors.green, bold = true },
	LineNr = { fg = colors.fg_dark },
	SignColumn = { bg = colors.bg },
	Comment = { fg = colors.fg_dark, italic = true },

	-- Diagnostics
	DiagnosticError = { fg = colors.orange },
	DiagnosticWarn = { fg = colors.yellow },
	DiagnosticInfo = { fg = colors.green },
	DiagnosticHint = { fg = colors.fg },

	-- TreeSitter
	["@variable"] = { fg = colors.orange },
	["@variable.builtin"] = { fg = colors.orange },
	["@function"] = { fg = colors.green },
	["@function.builtin"] = { fg = colors.green },
	["@parameter"] = { fg = colors.green },
	["@method"] = { fg = colors.green },
	["@field"] = { fg = colors.fg },
	["@property"] = { fg = colors.orange },
	["@constructor"] = { fg = colors.fg },
	["@conditional"] = { fg = colors.orange },
	["@repeat"] = { fg = colors.orange },
	["@label"] = { fg = colors.orange },
	["@keyword"] = { fg = colors.orange },
	["@keyword.operator"] = { fg = colors.orange },
	["@operator"] = { fg = colors.fg },
	["@string"] = { fg = colors.green },
	["@string.escape"] = { fg = colors.orange },
	["@comment"] = { link = "Comment" },
	["@type"] = { fg = colors.green },
	["@type.builtin"] = { fg = colors.green },
	["@tag"] = { fg = colors.orange },
	["@tag.attribute"] = { fg = colors.green },
	["@punctuation"] = { fg = colors.fg },
	["@punctuation.bracket"] = { fg = colors.fg },
	["@punctuation.delimiter"] = { fg = colors.fg },
}

for group, opts in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, opts)
end
