local Item = {}

function Item.new(name, displayName, count, maxCount, nbt)
    local instance = {
        name = name or "unknown",
        displayName = displayName or "Unknown Item",
        count = count or 0,
        maxCount = maxCount or 64,
        nbt = nbt or {}
    }
    return instance
end

function Item:displayInfo()
    print("Name:", self.name)
    print("Display Name:", self.displayName)
    print("Count:", self.count)
    print("Max Count:", self.maxCount)
    print("NBT:", self.nbt)
end

return Item
