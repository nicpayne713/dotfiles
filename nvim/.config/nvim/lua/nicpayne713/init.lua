require("nicpayne713.telescope")
-- require("nicpayne713.treesitter")
require("nicpayne713.filesystem")
require("nicpayne713.lsp-config")
require("nicpayne713.lspsaga")
require("nicpayne713.cmp")
require("nicpayne713.color")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end
