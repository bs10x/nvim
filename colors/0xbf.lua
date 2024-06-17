-----------------------------------------------------------------------------
-- default vim colorscheme
-- vim.cmd([[ colorscheme vim ]])
-----------------------------------------------------------------------------

-- vim.cmd.highlight('clear')
vim.g.colors_name = '0xbf'


-- command fails in light mode, succeeds in dark mode
local is_darwin = vim.fn.has('mac') == 1
if not is_darwin then
  vim.o.background = 'dark'
  hi('Normal', 		 { bg = 'Black', 							  ctermbg = 'Black' })
else
  local theme = vim.fn.system('defaults read -g AppleInterfaceStyle >/dev/null 2>&1')
  if vim.v.shell_error ~= 0 then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end	
end

local hi = function(name, val)
  -- Force links
  val.force = true

  -- Make sure that `cterm` attribute is not populated from `gui`
  val.cterm = val.cterm or {}

  -- Define global highlight
  vim.api.nvim_set_hl(0, name, val)
end

-- General
hi('Normal', { bg = 'none' })

hi('Conceal',      { fg = 'LightGrey', bg = 'DarkGrey', ctermfg = 'LightGrey', ctermbg = 'DarkGrey' })
hi('Cursor',       {})
hi('lCursor',      {})
hi('DiffText',     { bg = 'Red', bold = true,           ctermbg = 'Red', cterm = { bold = true } })
hi('ErrorMsg',     { fg = 'White', bg = 'Red',          ctermfg = 'White', ctermbg = 'DarkRed' })
hi('IncSearch',    { reverse = true,                    cterm = { reverse = true } })
hi('ModeMsg',      { bold = true,                       cterm = { bold = true } })
hi('NonText',      { fg = 'Blue', bold = true,          ctermfg = 'Blue' })
hi('PmenuSbar',    { bg = 'Grey',                       ctermbg = 'Grey' })
hi('StatusLine',   { reverse = true, bold = true,       cterm = { reverse = true, bold = true }})
hi('StatusLineNC', { reverse = true,                    cterm = { reverse = true } })
hi('TabLineFill',  { reverse = true,                    cterm = { reverse = true } })
hi('TabLineSel',   { bold = true,                       cterm = { bold = true } })
hi('TermCursor',   { reverse = true,                    cterm = { reverse = true } })
hi('WinBar',       { bold = true,                       cterm = { bold = true } })
hi('WildMenu',     { fg = 'Black', bg = 'Yellow',       ctermfg = 'Black', ctermbg = 'Yellow' })

hi('VertSplit',      { link = 'Normal' })
hi('WinSeparator',   { link = 'VertSplit' })
hi('WinBarNC',       { link = 'WinBar' })
hi('EndOfBuffer',    { link = 'NonText' })
hi('LineNrAbove',    { link = 'LineNr' })
hi('LineNrBelow',    { link = 'LineNr' })
hi('QuickFixLine',   { link = 'Search' })
hi('CursorLineSign', { link = 'SignColumn' })
hi('CursorLineFold', { link = 'FoldColumn' })
hi('CurSearch',      { link = 'Search' })
hi('PmenuKind',      { link = 'Pmenu' })
hi('PmenuKindSel',   { link = 'PmenuSel' })
hi('PmenuExtra',     { link = 'Pmenu' })
hi('PmenuExtraSel',  { link = 'PmenuSel' })
hi('Substitute',     { link = 'Search' })
hi('Whitespace',     { link = 'NonText' })
hi('MsgSeparator',   { link = 'StatusLine' })
hi('NormalFloat',    { link = 'Pmenu' })
hi('FloatBorder',    { link = 'WinSeparator' })
hi('FloatTitle',     { link = 'Title' })
hi('FloatFooter',    { link = 'Title' })

hi('FloatShadow',          { bg = 'Black', blend=80 })
hi('FloatShadowThrough',   { bg = 'Black', blend=100 })
hi('RedrawDebugNormal',    { reverse = true,             cterm = { reverse = true } })
hi('RedrawDebugClear',     { bg = 'Yellow',              ctermbg = 'Yellow' })
hi('RedrawDebugComposed',  { bg = 'Green',               ctermbg = 'Green' })
hi('RedrawDebugRecompose', { bg = 'Red',                 ctermbg = 'Red' })
hi('Error',                { fg = 'White', bg = 'Red',   ctermfg = 'White', ctermbg = 'Red' })
hi('Todo',                 { fg = 'Blue', bg = 'Yellow', ctermfg = 'Black', ctermbg = 'Yellow' })

hi('String',         { link = 'Constant' })
hi('Character',      { link = 'Constant' })
hi('Number',         { link = 'Constant' })
hi('Boolean',        { link = 'Constant' })
hi('Float',          { link = 'Number' })
hi('Function',       { link = 'Identifier' })
hi('Conditional',    { link = 'Statement' })
hi('Repeat',         { link = 'Statement' })
hi('Label',          { link = 'Statement' })
hi('Operator',       { link = 'Statement' })
hi('Keyword',        { link = 'Statement' })
hi('Exception',      { link = 'Statement' })
hi('Include',        { link = 'PreProc' })
hi('Define',         { link = 'PreProc' })
hi('Macro',          { link = 'PreProc' })
hi('PreCondit',      { link = 'PreProc' })
hi('StorageClass',   { link = 'Type' })
hi('Structure',      { link = 'Type' })
hi('Typedef',        { link = 'Type' })
hi('Tag',            { link = 'Special' })
hi('SpecialChar',    { link = 'Special' })
hi('Delimiter',      { link = 'Special' })
hi('SpecialComment', { link = 'Special' })
hi('Debug',          { link = 'Special' })

hi('DiagnosticError',            { fg = 'Red',                          ctermfg = 1 })
hi('DiagnosticWarn',             { fg = 'Orange',                       ctermfg = 3 })
hi('DiagnosticInfo',             { fg = 'LightBlue',                    ctermfg = 4 })
hi('DiagnosticHint',             { fg = 'LightGrey',                    ctermfg = 7 })
hi('DiagnosticOk',               { fg = 'LightGreen',                   ctermfg = 10 })
hi('DiagnosticUnderlineError',   { sp = 'Red', underline = true,        cterm = { underline = true } })
hi('DiagnosticUnderlineWarn',    { sp = 'Orange', underline = true,     cterm = { underline = true } })
hi('DiagnosticUnderlineInfo',    { sp = 'LightBlue', underline = true,  cterm = { underline = true } })
hi('DiagnosticUnderlineHint',    { sp = 'LightGrey', underline = true,  cterm = { underline = true } })
hi('DiagnosticUnderlineOk',      { sp = 'LightGreen', underline = true, cterm = { underline = true } })
hi('DiagnosticVirtualTextError', { link = 'DiagnosticError' })
hi('DiagnosticVirtualTextWarn',  { link = 'DiagnosticWarn' })
hi('DiagnosticVirtualTextInfo',  { link = 'DiagnosticInfo' })
hi('DiagnosticVirtualTextHint',  { link = 'DiagnosticHint' })
hi('DiagnosticVirtualTextOk',    { link = 'DiagnosticOk' })
hi('DiagnosticFloatingError',    { link = 'DiagnosticError' })
hi('DiagnosticFloatingWarn',     { link = 'DiagnosticWarn' })
hi('DiagnosticFloatingInfo',     { link = 'DiagnosticInfo' })
hi('DiagnosticFloatingHint',     { link = 'DiagnosticHint' })
hi('DiagnosticFloatingOk',       { link = 'DiagnosticOk' })
hi('DiagnosticSignError',        { link = 'DiagnosticError' })
hi('DiagnosticSignWarn',         { link = 'DiagnosticWarn' })
hi('DiagnosticSignInfo',         { link = 'DiagnosticInfo' })
hi('DiagnosticSignHint',         { link = 'DiagnosticHint' })
hi('DiagnosticSignOk',           { link = 'DiagnosticOk' })
hi('DiagnosticDeprecated',       { sp = 'Red', strikethrough = true,    cterm = { strikethrough = true } })

hi('DiagnosticUnnecessary', { link = 'Comment' })
hi('LspInlayHint',          { link = 'NonText' })
hi('SnippetTabstop',        { link = 'Visual' })

-- Text
hi('@markup.raw',       { link = 'Comment' })
hi('@markup.link',      { link = 'Identifier' })
hi('@markup.heading',   { link = 'Title' })
hi('@markup.link.url',  { link = 'Underlined' })
hi('@markup.underline', { link = 'Underlined' })
hi('@comment.todo',     { link = 'Todo' })

-- Miscs
hi('@comment',     { link = 'Comment' })
hi('@punctuation', { link = 'Delimiter' })

-- Constants
hi('@constant',          { link = 'Constant' })
hi('@constant.builtin',  { link = 'Special' })
hi('@constant.macro',    { link = 'Define' })
hi('@keyword.directive', { link = 'Define' })
hi('@string',            { link = 'String' })
hi('@string.escape',     { link = 'SpecialChar' })
hi('@string.special',    { link = 'SpecialChar' })
hi('@character',         { link = 'Character' })
hi('@character.special', { link = 'SpecialChar' })
hi('@number',            { link = 'Number' })
hi('@boolean',           { link = 'Boolean' })
hi('@number.float',      { link = 'Float' })

-- Functions
hi('@function',                   { link = 'Function' })
hi('@function.builtin',           { link = 'Special' })
hi('@function.macro',             { link = 'Macro' })
hi('@function.method',            { link = 'Function' })
hi('@variable.parameter',         { link = 'Identifier' })
hi('@variable.parameter.builtin', { link = 'Special' })
hi('@variable.member',            { link = 'Identifier' })
hi('@property',                   { link = 'Identifier' })
hi('@attribute',                  { link = 'Macro' })
hi('@attribute.builtin',          { link = 'Special' })
hi('@constructor',                { link = 'Special' })

-- Keywords
hi('@keyword.conditional', { link = 'Conditional' })
hi('@keyword.repeat',      { link = 'Repeat' })
hi('@keyword.type',        { link = 'Structure' })
hi('@label',               { link = 'Label' })
hi('@operator',            { link = 'Operator' })
hi('@keyword',             { link = 'Keyword' })
hi('@keyword.exception',   { link = 'Exception' })

hi('@variable',          { link = 'Identifier' })
hi('@type',              { link = 'Type' })
hi('@type.definition',   { link = 'Typedef' })
hi('@module',            { link = 'Identifier' })
hi('@keyword.import',    { link = 'Include' })
hi('@keyword.directive', { link = 'PreProc' })
hi('@keyword.debug',     { link = 'Debug' })
hi('@tag',               { link = 'Tag' })
hi('@tag.builtin',       { link = 'Special' })

-- LSP semantic tokens
hi('@lsp.type.class',         { link = 'Structure' })
hi('@lsp.type.comment',       { link = 'Comment' })
hi('@lsp.type.decorator',     { link = 'Function' })
hi('@lsp.type.enum',          { link = 'Structure' })
hi('@lsp.type.enumMember',    { link = 'Constant' })
hi('@lsp.type.function',      { link = 'Function' })
hi('@lsp.type.interface',     { link = 'Structure' })
hi('@lsp.type.macro',         { link = 'Macro' })
hi('@lsp.type.method',        { link = 'Function' })
hi('@lsp.type.namespace',     { link = 'Structure' })
hi('@lsp.type.parameter',     { link = 'Identifier' })
hi('@lsp.type.property',      { link = 'Identifier' })
hi('@lsp.type.struct',        { link = 'Structure' })
hi('@lsp.type.type',          { link = 'Type' })
hi('@lsp.type.typeParameter', { link = 'TypeDef' })
hi('@lsp.type.variable',      { link = 'Identifier' })

if vim.o.background == 'light' then
  -- Default colors only used with a light background.
  -- hi('Normal', 		 { bg = 'White', 							   ctermbg = 'White' })
  hi('EndOfBuffer',  { fg = 'Black',                               ctermfg = 'Black' })   -- WIP ---------------
  hi('ColorColumn',  { bg = 'LightRed',                            ctermbg = 'LightRed' })
  hi('CursorColumn', { bg = 'Grey90',                              ctermbg = 'LightGrey' })
  hi('CursorLine',   { bg = 'Grey90',                              cterm = { underline = true } })
  hi('CursorLineNr', { fg = 'Brown', bold = true,                  ctermfg = 'Brown', cterm = { underline = true } })
  hi('DiffAdd',      { bg = 'LightBlue',                           ctermbg = 'LightBlue' })
  hi('DiffChange',   { bg = 'LightMagenta',                        ctermbg = 'LightMagenta' })
  hi('DiffDelete',   { fg = 'Blue', bg = 'LightCyan', bold = true, ctermfg = 'Blue', ctermbg = 'LightCyan' })
  hi('Directory',    { fg = 'Blue',                                ctermfg = 'DarkBlue' })
  hi('FoldColumn',   { fg = 'DarkBlue', bg = 'Grey',               ctermfg = 'DarkBlue', ctermbg = 'Grey' })
  hi('Folded',       { fg = 'DarkBlue', bg = 'LightGrey',          ctermfg = 'DarkBlue', ctermbg = 'Grey' })
  hi('LineNr',       { fg = 'Brown',                               ctermfg = 'Brown' })
  hi('MatchParen',   { bg = 'Cyan',                                ctermbg = 'Cyan' })
  hi('MoreMsg',      { fg = 'SeaGreen', bold = true,               ctermfg = 'DarkGreen' })
  hi('Pmenu',        { bg = 'LightMagenta',                        ctermfg = 'Black', ctermbg = 'LightMagenta' })
  hi('PmenuSel',     { bg = 'Grey',                                ctermfg = 'Black', ctermbg = 'LightGrey' })
  hi('PmenuThumb',   { bg = 'Black',                               ctermbg = 'Black' })
  hi('Question',     { fg = 'SeaGreen', bold = true,               ctermfg = 'DarkGreen' })
  hi('Search',       { bg = 'Yellow',                              ctermbg = 'Yellow' })
  hi('SignColumn',   { fg = 'DarkBlue', bg = 'Grey',               ctermfg = 'DarkBlue', ctermbg = 'Grey' })
  hi('SpecialKey',   { fg = 'Blue',                                ctermfg = 'DarkBlue' })
  hi('SpellBad',     { sp = 'Red', undercurl = true,               ctermbg = 'LightRed' })
  hi('SpellCap',     { sp = 'Blue', undercurl = true,              ctermbg = 'LightBlue' })
  hi('SpellLocal',   { sp = 'DarkCyan', undercurl = true,          ctermbg = 'Cyan' })
  hi('SpellRare',    { sp = 'Magenta', undercurl = true,           ctermbg = 'LightMagenta' })
  hi('TabLine',      { bg = 'LightGrey', underline = true,         ctermfg = 'Black', ctermbg = 'LightGrey', cterm = { underline = true } })
  hi('Title',        { fg = 'Magenta', bold = true,                ctermfg = 'DarkMagenta' })
  hi('Visual',       { fg = 'Black', bg = 'LightGrey',             ctermfg = 'Black', ctermbg = 'Grey' })
  hi('WarningMsg',   { fg = 'Red',                                 ctermfg = 'DarkRed' })
  hi('Comment',      { fg = 'Blue',                                ctermfg = 'DarkBlue' })
  hi('Constant',     { fg = 'Magenta',                             ctermfg = 'DarkRed' })
  hi('Special',      { fg = '#6a5acd',                             ctermfg = 'DarkMagenta' })
  hi('Identifier',   { fg = 'DarkCyan',                            ctermfg = 'DarkCyan' })
  hi('Statement',    { fg = 'Brown', bold = true,                  ctermfg = 'Brown' })
  hi('PreProc',      { fg = '#6a0dad',                             ctermfg = 'DarkMagenta' })
  hi('Type',         { fg = 'SeaGreen', bold = true,               ctermfg = 'DarkGreen' })
  hi('Underlined',   { fg = 'SlateBlue', underline = true,         ctermfg = 'DarkMagenta', cterm = { underline = true } })
  hi('Ignore',       {                                             ctermfg = 'White' })
else
  -- Default colors only used with a dark background.
  -- hi('Normal', 		 { bg = 'Black', 							  ctermbg = 'Black' })
  hi('EndOfBuffer',  { fg = 'White',                              ctermfg = 'White' })
  hi('ColorColumn',  { bg = 'DarkRed',                            ctermbg = 'DarkRed' })
  hi('CursorColumn', { bg = 'Grey40',                             ctermbg = 'DarkGrey' })
  hi('CursorLine',   { bg = 'Grey40',                             cterm = { underline = true } })
  hi('CursorLineNr', { fg = 'Yellow', bold = true,                ctermfg = 'Yellow', cterm = { underline = true } })
  hi('DiffAdd',      { bg = 'DarkBlue',                           ctermbg = 'DarkBlue' })
  hi('DiffChange',   { bg = 'DarkMagenta',                        ctermbg = 'DarkMagenta' })
  hi('DiffDelete',   { fg = 'Blue', bg = 'DarkCyan', bold = true, ctermfg = 'Blue', ctermbg = 'DarkCyan' })
  hi('Directory',    { fg = 'Cyan',                               ctermfg = 'LightCyan' })
  hi('FoldColumn',   { fg = 'Cyan', bg = 'Grey',                  ctermfg = 'Cyan', ctermbg = 'DarkGrey' })
  hi('Folded',       { fg = 'Cyan', bg = 'DarkGrey',              ctermfg = 'Cyan', ctermbg = 'DarkGrey' })
  hi('LineNr',       { fg = 'Yellow',                             ctermfg = 'Yellow' })
  hi('MatchParen',   { bg = 'DarkCyan',                           ctermbg = 'DarkCyan' })
  hi('MoreMsg',      { fg = 'SeaGreen', bold = true,              ctermfg = 'LightGreen' })
  hi('Pmenu',        { bg = 'Magenta',                            ctermfg = 'Black', ctermbg = 'Magenta' })
  hi('PmenuSel',     { bg = 'DarkGrey',                           ctermfg = 'DarkGrey', ctermbg = 'Black' })
  hi('PmenuThumb',   { bg = 'White',                              ctermbg = 'White' })
  hi('Question',     { fg = 'Green', bold = true,                 ctermfg = 'LightGreen' })
  hi('Search',       { fg = 'Black', bg = 'Yellow',               ctermfg = 'Black', ctermbg = 'Yellow' })
  hi('SignColumn',   { fg = 'Cyan', bg = 'Grey',                  ctermfg = 'Cyan', ctermbg = 'DarkGrey' })
  hi('SpecialKey',   { fg = 'Cyan',                               ctermfg = 'LightBlue' })
  hi('SpellBad',     { sp = 'Red', undercurl = true,              ctermbg = 'Red' })
  hi('SpellCap',     { sp = 'Blue', undercurl = true,             ctermbg = 'Blue' })
  hi('SpellLocal',   { sp = 'Cyan', undercurl = true,             ctermbg = 'Cyan' })
  hi('SpellRare',    { sp = 'Magenta', undercurl = true,          ctermbg = 'Magenta' })
  hi('TabLine',      { bg = 'DarkGrey', underline = true,         ctermfg = 'White', ctermbg = 'DarkGrey', cterm = { underline = true } })
  hi('Title',        { fg = 'Magenta', bold = true,               ctermfg = 'LightMagenta' })
  hi('Visual',       { fg = 'LightGrey', bg = '#575757',          ctermfg = 'Black', ctermbg = 'Grey' })
  hi('WarningMsg',   { fg = 'Red',                                ctermfg = 'LightRed' })
  hi('Comment',      { fg = '#80a0ff',                            ctermfg = 'Cyan' })
  hi('Constant',     { fg = '#ffa0a0',                            ctermfg = 'Magenta' })
  hi('Special',      { fg = 'Orange',                             ctermfg = 'LightRed' })
  hi('Identifier',   { fg = '#40ffff',                            ctermfg = 'Cyan', cterm = { bold = true } })
  hi('Statement',    { fg = '#ffff60', bold = true,               ctermfg = 'Yellow' })
  hi('PreProc',      { fg = '#ff80ff',                            ctermfg = 'LightBlue' })
  hi('Type',         { fg = '#60ff60', bold = true,               ctermfg = 'LightGreen' })
  hi('Underlined',   { fg = '#80a0ff', underline = true,          ctermfg = 'LightBlue', cterm = { underline = true } })
  hi('Ignore',       {                                            ctermfg = 'Black' })
end



-------------------------------------------------------
-- custom configuration
-------------------------------------------------------




-- GOOD
-- hi('LineNr',        { fg = 'White',       ctermfg = 'White' })
-- hi('EndOfBuffer',   { fg = 'White',       ctermfg = 'White' })

-- vim.cmd([[ set guicursor=n-v-c-i:block ]])
-- vim.cmd([[ highlight LineNr guifg=white ]])

-- WIP
vim.cmd([[ highlight CursorLineNr guibg=darkgrey ]]) -- visual mode  selection is darkgrey
vim.cmd([[ highlight CursorLineNr guifg=black ]])

-- vim.cmd([[ highlight CursorLineNr term=bold ]])
-- vim.cmd([[ highlight CursorLine guibg=lightgrey ]])
-- vim.cmd([[ highlight EndOfBuffer guifg=bold 
