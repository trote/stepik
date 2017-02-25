command = {}
n = int(input())
for _ in range(n):
    line = input()
    (gr1, g1, gr2, g2) = line.split(';')
    if not gr1 in command:
        command[gr1] = [0 for _ in range(5)]
    if not gr2 in command:
        command[gr2] = [0 for _ in range(5)]

    command[gr1][0] += 1
    command[gr2][0] += 1
    if g1 > g2:
        command[gr1][1] += 1
        command[gr2][3] += 1
        command[gr1][4] += 3
    elif g1 < g2:
        command[gr1][3] += 1
        command[gr2][1] += 1
        command[gr2][4] += 3
    else:
        command[gr1][2] += 1
        command[gr2][2] += 1
        command[gr1][4] += 1
        command[gr2][4] += 1

for group in command:
    print('%s:%d %d %d %d %d' % (group, command[group][0], command[group][1], command[group][2], command[group][3], command[group][4]))
