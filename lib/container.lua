local Container = {}

function Container.new(name, type, isOccupied)
    local instance = {
        name = name,
        type = type,
        isOccupied = isOccupied,
        slots = {}
    }
    instance.isOccupied = Container.checkIsOccupied(instance)
    return instance
end

function Container.checkIsOccupied(container)
    for _, slot in ipairs(container.slots) do
        if not slot.item then
            return false
        end
    end
    return true
end

function Container.addSlot(self, slot)
    table.insert(self.slots, slot)
    slot.parentContainer = self
end

function Container.displayInfo(self)
    print("Container Name:", self.name)
    print("Type:", self.type)
    print("Is Occupied:", self.isOccupied)
    print("Number of Slots:", #self.slots)
end

return Container
