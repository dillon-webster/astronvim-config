vim.keymap.set("i", "<Tab>", function()
  if require("blink.cmp").is_visible() then
    require("blink.cmp").accept()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end, { desc = "Accept completion or insert tab" })
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25-blinkwait700-blinkon400-blinkoff250"
-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
--
