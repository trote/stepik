cache = dict()
result = []
n = int(input())
for _ in range(0, n):
    key = int(input())
    if key not in cache:
        cache[key] = f(key)
    result.append(cache[key])

for num in result:
    print(num)
