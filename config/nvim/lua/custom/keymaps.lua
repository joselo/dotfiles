vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.clipboard = "unnamedplus"
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Y", '"+Y', { noremap = true, silent = true })

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":BufDel<cr>")

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { noremap = true, silent = false, desc = 'Quick search and replace' })

vim.api.nvim_create_user_command("ReplaceInQuickfix", function(opts)
  local search = opts.fargs[1]
  local replace = opts.fargs[2]
  if not search or not replace then
    print("Uso: :ReplaceInQuickfix <buscar> <reemplazar>")
    return
  end

  local bufnames = {}
  for _, item in ipairs(vim.fn.getqflist()) do
    local name = vim.fn.bufname(item.bufnr)
    if name ~= "" and vim.fn.filereadable(name) == 1 then
      bufnames[name] = true
    end
  end
  local args = {}
  for name, _ in pairs(bufnames) do
    table.insert(args, name)
  end
  vim.cmd("args " .. table.concat(args, " "))

  vim.cmd(string.format("argdo %%s/%s/%s/gc | update", search, replace))
end, {
  nargs = "+",
  desc = "Reemplaza texto en archivos del quickfix list",
})
