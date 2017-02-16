l = int(input())
result = []
for i in range(1, int((l * 3) ** 0.5) + 1):
    result += [i] * i

for i in result[0:l]:
    print(i, end=' ')
