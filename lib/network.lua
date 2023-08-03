local Network = {}

-- Global variable to hold the instance of the Network
local instance = nil

function Network.getInstance()
    if not instance then
        instance = {
            containers = {}
        }
    end
    return instance
end

function Network.addContainer(self, container)
    table.insert(self.containers, container)
end

function Network.getContainersWithItem(self, itemName)
    local containersWithItem = {}
    for _, container in ipairs(self.containers) do
        for _, slot in ipairs(container.slots) do
            if slot.item and slot.item.name == itemName then
                table.insert(containersWithItem, container)
                break
            end
        end
    end
    return containersWithItem
end

return Network
