objects = [1, 2, 1, 2, 3]
seen = set()
ans = 0
for obj in objects: # доступная переменная objects
    seen.add(id(obj))

print(len(seen))
