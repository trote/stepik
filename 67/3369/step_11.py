n = int(input())
arr = [[0 for i in range(n)] for i in range(n)]
path = [[0, 1], [1, 0], [0, -1], [-1, 0]]
x, y, d = (0, 0, 0)
for i in range(n**2):
    arr[x][y] = i+1
    if (0 > x+path[d][0] or x+path[d][0] >= n) or (0 > y+path[d][1] or y+path[d][1] >= n) or arr[x+path[d][0]][y+path[d][1]] != 0:
        d = (d+1) % 4

    x += path[d][0]
    y += path[d][1]

for i in range(len(arr)):
    for j in range(len(arr[i])):
        print(arr[i][j], end=' ')
    print()
