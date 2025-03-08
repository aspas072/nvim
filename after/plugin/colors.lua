function ColorMyPencils(color)
    color = color or "rose-pine-moon"
    require("rose-pine").setup({
        styles = { italic = false },
    })
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    -- Customize specific styles
    --  vim.api.nvim_set_hl(0, "Comment", { italic = true, bold = false, underline = false, fg = "#a06967" }) -- Comments italic only, no bold
    -- vim.api.nvim_set_hl(0, "Comment", { italic = true, bold = false, underline = false, fg = "#908caa" }) -- Comments italic only, no bold + real comment color
    vim.api.nvim_set_hl(0, "Comment", { italic = false, bold = false, underline = false, fg = "#908caa" }) -- Comments italic only, no bold + real comment color
    vim.api.nvim_set_hl(0, "Visual", { fg = "#908caa", bg = "#38313d" })                                   -- Visual color for fg or bg
    vim.api.nvim_set_hl(0, "@function.builtin", { bold = false })                                          -- @function.builtin no bold
    vim.api.nvim_set_hl(0, "@variable.builtin", { fg = "#eb6f92", bold = false })                          -- @variable.builtin with colors no bold
    vim.api.nvim_set_hl(0, "@module.builtin", { fg = "#e0def4", bold = false })                            -- @variable.builtin with colors no bold
    vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#9ccfd8", bold = false })                              -- @variable.builtin with colors no bold
    vim.api.nvim_set_hl(0, "@markup.strong", { fg = "#9ccfd8", bold = false })                             -- @variable.builtin with colors no bold
    vim.api.nvim_set_hl(0, "@markup.heading", { fg = "#9ccfd8", bold = false })                            -- @variable.builtin with colors no bold
    vim.api.nvim_set_hl(0, "Title", { fg = "#9ccfd8", bold = false })                                      -- @this is for html h1 or p tags
    vim.api.nvim_set_hl(0, "SpellBad", { fg = "#908caa", underline = false })                              -- this line for comment underline
    vim.api.nvim_set_hl(0, "SpellCap", { fg = "#908caa", underline = false })                              -- @this is for html h1 or p tags
    vim.api.nvim_set_hl(0, "SpellRare", { fg = "#908caa", underline = false })                             -- @this is for html h1 or p tags
    vim.api.nvim_set_hl(0, "SpellLocal", { fg = "#908caa", underline = false })                            -- @this is for html h1 or p tags
end

ColorMyPencils()
