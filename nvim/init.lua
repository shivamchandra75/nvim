if vim.g.vscode == nil then
  require("user.core")
  require("user.lazy")
elseif vim.g.vscode ~= nil then
  require("myCode.options")
  require("user.lazy")
end


