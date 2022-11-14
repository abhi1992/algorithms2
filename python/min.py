aaaaaa = [6, 8, 1, 4, 7, -9, 10] # constant time / space not includeds

if len(aaaaaa) >= 1: # constant time
    min_1 = aaaaaa[0] # fishy code (constant time) / constant space 

    for i in aaaaaa: # O(n) n elements
        if i < min_1: # O(1) constant time
            min_1 = i # O(1)
else:
    print(-1)

# O(k*n) => O(n) where k is a constant.
# O(n) => Time Complexity

'''
O(log 2 N) = 20 where n = 2^20
O(n) = 1048576
O(n^2) = 1.0995116e+12

O(1) space complexity
'''
