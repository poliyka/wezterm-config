local platform = require('utils.platform')()

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { 'wsl' }
  options.launch_menu = {
    { label = 'PowerShell Desktop', args = { 'powershell' } },
    { label = 'Command Prompt',     args = { 'cmd' } },
    { label = 'Ubuntu 20.04',       args = { 'wsl' } },
    {
      label = 'Git Bash',
      args = { 'C:\\Users\\poliyka\\scoop\\apps\\git\\current\\bin\\bash.exe' },
    },
  }
elseif platform.is_mac then
  options.default_prog = { '/opt/homebrew/bin/zsh' }
  options.launch_menu = {
    { label = 'Bash',    args = { 'bash' } },
    { label = 'Nushell', args = { '/opt/homebrew/bin/nu' } },
    { label = 'Zsh',     args = { 'zsh' } },
  }
end

return options
