a = 9
b = 10

t = a
a = b
b = t

a = a + b # 9 + 10 -> a
b = a - b # 9 + 10 - 10 -> b -> b = 9
a = a - b # 9 + 10 - 9 -> a -> a = 10


print(a+b) # O(1) == O(k) where k is a constant