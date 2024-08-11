-- Prints out the Key value representation of a table
P = function (v)
  print(vim.inspect(v))
  return v
end

RELOAD = function (...)
  return require'plenary.reload'.reload_module(...)
end

-- Reloads a module
R = function (name)
  RELOAD(name)
  return require(name)
end
