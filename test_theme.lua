-- Theme Test File for Embark
-- Open this file with Embark theme to see syntax highlighting

-- Comments should appear in subtle gray-purple
-- TODO: This should be highlighted
-- FIXME: This too
-- NOTE: And this

---@class MyClass A documented class
---@field name string The name field
local MyClass = {}

-- Strings in yellow
local greeting = "Hello, Embark!"
local multiline = [[
  This is a multiline string
  with several lines
]]

-- Numbers in dark yellow
local integer = 42
local float = 3.14159
local hex = 0xFF
local binary = 0b1010

-- Booleans in dark yellow
local is_enabled = true
local is_disabled = false

-- Functions in red
function MyClass:new(name)
  local instance = setmetatable({}, { __index = MyClass })
  instance.name = name
  return instance
end

-- Keywords in green
if greeting ~= nil then
  for i = 1, 10 do
    print(i)
  end

  while integer > 0 do
    integer = integer - 1
  end
end

-- Operators in dark cyan
local result = (10 + 5) * 2 - 3 / 4
local comparison = result >= 20 and result <= 30 or result == 25

-- Built-in functions and variables in cyan
local path = vim.fn.stdpath("config")
local api = vim.api
local loop = vim.loop

-- Types in purple
---@type table<string, number>
local scores = {
  alice = 100,
  bob = 95,
  charlie = 87,
}

-- Special characters in cyan
local pattern = "(%w+)%s*=%s*(%d+)"
local escaped = "Line 1\nLine 2\tTabbed"

-- Module system
local M = {}

M.config = {
  transparent_background = false,
  terminal_italics = true,
}

---Setup the module
---@param opts table? Optional configuration
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

-- Error handling
local success, error_msg = pcall(function()
  error("This is an intentional error")
end)

if not success then
  vim.notify(error_msg, vim.log.levels.ERROR)
end

-- Diagnostics preview
-- The following line has an error:
-- local undefined_var = some_undefined_function()

-- LSP features preview
---@diagnostic disable-next-line: unused-local
local unused_variable = "This triggers a warning"

return M

--[[
  MULTILINE COMMENT BLOCK

  This is a longer comment that spans
  multiple lines. It should all be rendered
  in the same subtle color.

  Color Reference:
  - Comments: Astral0 (#8A889D)
  - Strings: Yellow (#ffe6b3)
  - Functions: Red (#F48FB1)
  - Keywords: Green (#A1EFD3)
  - Types: Purple (#d4bfff)
  - Operators: Dark Cyan (#63f2f1)
]]
