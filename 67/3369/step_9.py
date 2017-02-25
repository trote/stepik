lst = [int(i) for i in input().split()]
x = int(input())

index = [];
for i in range(len(lst)):
    if lst[i] == x:
        index.append(i)

if len(index) > 0:
    for item in index:
        print(item, end=' ')
else:
    print("Отсутствует")
