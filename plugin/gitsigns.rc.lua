local status, gitsigns = pcall(require, 'gitsigns')
if (not status) then
    print("Gitsigns is not installed!")
    return
end

gitsigns.setup {}
