arr = []
line = input()
while line != 'end':
    arr.append([ int(i) for i in line.split()])
    line = input()

result = [[] for _ in range(len(arr))]
for i in range(len(arr)):
    result[i] = [[] for _ in range(len(arr[i]))]
    for j in range(len(arr[i])):
        n = arr[i-1][j];
        if i + 1 >= len(arr):
            s = arr[0][j]
        else:
            s = arr[i+1][j]
        w = arr[i][j-1]
        if j + 1 >= len(arr[i]):
            e = arr[i][0]
        else:
            e = arr[i][j+1]

        result[i][j] = n + s + w + e
        print(result[i][j], end=' ')
    print()
