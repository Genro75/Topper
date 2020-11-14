-- manageInventory function to add, update / delete items to / from the Inventory
function manageInventory()
    -- reading total Items N
    N = tonumber(io.read())
 
    -- write your code here
 
    -- reading total M operations to perform
    M = tonumber(io.read())
 
    -- write your code here
 
    -- calculate the sum of items
    local sum = 0
 
    -- write your code here    
 
    print(sum)
end
 
-- for each case, call the manageInventory function to add, update / delete items to / from the Inventory
tc = tonumber(io.read())
i = 0
while i < tc do
    manageInventory()
    i = i + 1
end