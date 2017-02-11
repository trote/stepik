a = int(input())
b = int(input())
c = int(input())
d = int(input())

print("\t", end='')
for i in range(c, d+1):
    print(i, end="\t")
print()

for x in range (a, b+1):
    print(x, end="\t")
    for y in range (c, d+1):
        print(x * y, end="\t")
    print()
