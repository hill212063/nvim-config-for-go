return {
  "polirritmico/monokai-nightasty.nvim",
  lazy = false,
  priority = 1000,
  keys = {
    { "<leader>tt", "<Cmd>MonokaiToggleLight<CR>", desc = "Monokai-Nightasty: Toggle dark/light theme." },
  },
  opts = {
    dark_style_background = "transparent", -- default, dark, transparent, #color
    light_style_background = "default",    -- default, dark, transparent, #color
    color_headers = true,                  -- Enable header colors for each header level (h1, h2, etc.)
    lualine_bold = true,                   -- Lualine a and z sections font width
    lualine_style = "default",             -- "dark", "light" or "default" (Follows dark/light style)
    -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
    hl_styles = {
      keywords = { italic = true },
      comments = { italic = true },
    },

    -- This also could be a table like this: `terminal_colors = { Normal = { fg = "#e6e6e6" } }`
    terminal_colors = function(colors)
      return { Normal = { fg = colors.fg_dark } }
    end
  },
  config = function(_, opts)
    -- Highlight line at the cursor position
    vim.opt.cursorline = true

    -- Default to dark theme
    vim.o.background = "dark" -- dark | light

    require("monokai-nightasty").load(opts)
  end,
}
