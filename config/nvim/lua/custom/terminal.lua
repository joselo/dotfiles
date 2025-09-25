local keymap = vim.keymap.set
local api = vim.api

local matrix_names = {
    "Neo", "Morpheus", "Trinity", "Agent Smith", "Oracle", "Architect",
    "Merovingian", "Persephone", "Niobe", "Commander Locke", "Link",
    "Tank", "Dozer", "Mouse", "Switch", "Apoc", "Cypher", "Zion",
    "Nebuchadnezzar", "Logos", "Icarus", "Osiris", "Vigilant", "Caduceus",
    "Red Pill", "Blue Pill", "Sentinel", "Squiddy", "Machine City",
    "Animatrix", "Construct", "Residual", "Anomaly", "One", "Keymaker",
    "Twins", "Ghost", "Sparks", "Vector", "Binary", "Code", "Matrix",
    "Reloaded", "Revolutions", "Enter", "Exit", "Jack In", "Jack Out",
    "Wake Up", "Rabbit Hole", "Glitch", "Debug", "Compile", "Execute"
}

local name_index = 0

local function get_next_matrix_name()
    name_index = name_index + 1
    if name_index > #matrix_names then
        name_index = 1
    end
    return matrix_names[name_index]
end

local function open_terminal()
    vim.cmd("belowright split")
    vim.cmd("terminal")

    local buf = api.nvim_get_current_buf()
    local matrix_name = get_next_matrix_name()
    api.nvim_buf_set_name(buf, "[" .. matrix_name .. "]")

    vim.cmd("startinsert")
end

keymap("n", "<C-t>", open_terminal)

api.nvim_command("autocmd TermOpen * setlocal nonumber")
api.nvim_command("autocmd TermEnter * setlocal signcolumn=no")

api.nvim_create_autocmd("TermOpen", {
    callback = function()
        local buf = api.nvim_get_current_buf()
        local buf_name = api.nvim_buf_get_name(buf)

        if string.match(buf_name, "^term://") then
            local matrix_name = get_next_matrix_name()
            api.nvim_buf_set_name(buf, "Terminal: " .. matrix_name)
        end
    end
})

local t_opts = {silent = true}
keymap('t', '<esc>',     '<C-\\><C-N>', t_opts)
keymap('t', '<C-Left>',  '<C-\\><C-N><C-w>h', t_opts)
keymap('t', '<C-Down>',  '<C-\\><C-N><C-w>j', t_opts)
keymap('t', '<C-Up>',    '<C-\\><C-N><C-w>k', t_opts)
keymap('t', '<C-Right>', '<C-\\><C-N><C-w>l', t_opts)
