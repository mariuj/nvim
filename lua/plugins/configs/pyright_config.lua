-- lua/plugins/configs/utils.lua
local M = {}

function M.save_pyright_config()
  -- Get the current file's directory
  local file_dir = vim.fn.expand('%:p:h')

  -- Get environment variables
  local venv_name = vim.fn.getenv('VIRTUAL_ENV')
  local pyenv_root = vim.fn.getenv('PYENV_ROOT')

  -- Exit if no virtual environment is active
  if not venv_name or venv_name == '' then
    vim.notify('No virtual environment detected.', vim.log.levels.WARN)
    return
  end

  -- Prepare the JSON content
  local json_content = string.format(
    '{\n   "venv" : "%s",\n   "venvPath" : "%s/versions"\n}',
    vim.fn.fnamemodify(venv_name, ':t'),
    pyenv_root
  )

  -- Determine the target path: Git root or current file directory
  local git_root = vim.fn.system('git rev-parse --show-toplevel 2>/dev/null'):gsub('%s+', '')
  local target_path = (git_root ~= '') and (git_root .. '/pyrightconfig.json') or (file_dir .. '/pyrightconfig.json')

  -- Write the JSON content to the target path
  local file = io.open(target_path, 'w')
  if file then
    file:write(json_content)
    file:close()
    vim.notify('pyrightconfig.json saved to ' .. target_path, vim.log.levels.INFO)
  else
    vim.notify('Failed to save pyrightconfig.json.', vim.log.levels.ERROR)
  end
end

return M

