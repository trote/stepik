compass = {'север' : [0, 1],
           'запад' : [-1, 0],
           'юг' : [0, -1],
           'восток' : [1, 0]}
coord = [0, 0]
n = int(input())
for _ in range(n):
    ( d, v ) = input().split()
    coord[0] += int(v) * compass[d][0]
    coord[1] += int(v) * compass[d][1]

print(coord[0], coord[1])
