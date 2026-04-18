return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["Y"] = { "yy", desc = "Yank line" },

          -- navigate buffer tabs
          ["L"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          ["H"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
          ["<Left>"] = { ":vertical resize -5<CR>", desc = "Allow resizing vertical splits" },
          ["<Right>"] = { ":vertical resize +5<CR>", desc = "Allow resizing vertical splits" },
          -- Dubugging mappings
          ["<Leader>dc>"] = { function() require("dap").continue() end, desc = "Debug: Start/Continue" },
          ["<Leader>do"] = { function() require("dap").step_over() end, desc = "Debug: Step Over" },
          ["<Leader>di"] = { function() require("dap").step_into() end, desc = "Debug: Step Into" },
          ["<Leader>d0"] = {function() require("dap").step_out() end, desc = "Debug: Step Out" },
          ["<leader>db"] = { function() require("dap").step_out() end, desc = "Debug: Step Out" },
          ["<Leader>b"] = { function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
          ["<Leader>du"] = { function() require("dapui").toggle() end, desc = "Debug: Toggle UI" },
        },
        i = {
          ["jk"] = { "<esc>", desc = "Easy go back to normal mode" },
        },
      },
    },
  },
}
