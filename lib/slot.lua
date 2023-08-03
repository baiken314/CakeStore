local Item = require("lib.item")

local Slot = {}

function Slot.new(index, item, parentContainer)
    local instance = {
        parentContainer = parentContainer,
        index = index,
        item = item or nil
    }
    return instance
end

function Slot:displayInfo()
    print("Slot Index:", self.index)
    if self.item then
        print("-- Item Info --")
        self.item:displayInfo()
    else
        print("No Item in Slot.")
    end
end

function Slot:isFull()
    if self.item then
        return self.item.count >= self.item.maxCount
    else
        return false
    end
end

return Slot
