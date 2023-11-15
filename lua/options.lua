local vt = vim.opt

vt.number = true
vt.relativenumber = true
vt.mouse = "a"
vt.autowrite = true
vt.tabstop = 2
vt.softtabstop = 2
vt.shiftwidth = 2
vt.smarttab = true

local function on_done()
    local _handle = io.popen("kill " .. pid)
    if _handle ~= nil then
        _handle:close()
    end
end

vim.api.nvim_create_autocmd("VimLeavePre", { callback = on_done })
