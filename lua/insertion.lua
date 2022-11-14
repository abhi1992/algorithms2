-- [[
    -- A = [5, 2, 4, 6, 1, 3]
    -- print(A)
    
    -- for i in range(1, len(A)):
    --     key = A[i]
    --     j = i-1
    --     print("key = "+str(key))
    --     print("j = "+str(j))
    --     print("i = "+str(i))
    
    --     while j >= 0 and A[j] > key:
    --         A[j+1] = A[j]
    --         j -= 1
    --         print("j = "+str(j))
    --         print("A = "+str(A))
    --         print("----")
    --     print(" --  End of while  --")
    --     A[j+1] = key
    --     print("A = "+str(A))
    --     print("")
    
    
    -- print(A)
-- ]]

A = {1, 2, 4, 6, 1, 3}
print(A)
for i = 1, 5 do
    local key = A[i]

    local j = i-1
    while j >= 0 and A[j] > key do
        A[j+1] = A[j]
        j = j - 1
    end
    A[j+1] = key
end

print(A)