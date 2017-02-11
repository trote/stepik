a = int(input())
b = int(input())

acc = 0
n = 0
for i in range (a, b+1):
    if i % 3 != 0:
        continue
    acc += i
    n += 1

print(acc / n)
