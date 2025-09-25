-- Opciones generales

vim.opt.number = true               -- Mostrar los numeros de linea
vim.opt.fileformat = "unix"         -- Fuerza formato LF al guardar
vim.opt.tabstop = 2                 -- Define el ancho de un tab como 2 espacios
vim.opt.shiftwidth = 2              -- Define el ancho de indentación como 2 espacios
vim.opt.expandtab = true            -- Convierte tabs en espacios
vim.opt.autoindent = true           -- Mantiene la indentación en nuevas líneas
vim.opt.termguicolors = true        -- Habilita el soporte para colores de una paleta de 24 bits RGB

-- Disable save backup files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Use tabs only for Makefiles
vim.api.nvim_create_autocmd("FileType", {
  pattern = "make",
  callback = function()
    vim.opt_local.expandtab = false
  end,
})
