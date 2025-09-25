function LspDiagnostics()
  local error_count = #vim.diagnostic.get(nil, { severity = vim.diagnostic.severity.ERROR })
  local warn_count  = #vim.diagnostic.get(nil, { severity = vim.diagnostic.severity.WARN })
  local hint_count  = #vim.diagnostic.get(nil, { severity = vim.diagnostic.severity.HINT })
  local info_count  = #vim.diagnostic.get(nil, { severity = vim.diagnostic.severity.INFO })

  local parts = {}

  if error_count > 0 then
    table.insert(parts, string.format("E:%d", error_count))
  end
  if warn_count > 0 then
    table.insert(parts, string.format("W:%d", warn_count))
  end
  if hint_count > 0 then
    table.insert(parts, string.format("H:%d", hint_count))
  end
  if info_count > 0 then
    table.insert(parts, string.format("I:%d", info_count))
  end

  return table.concat(parts, " ")
end

vim.o.statusline = "%f %h%m%r%=%{v:lua.LspDiagnostics()} %l,%c"
