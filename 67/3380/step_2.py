line = [input() for _ in range(4)]

print(line[2].translate(str.maketrans(line[0], line[1])))
print(line[3].translate(str.maketrans(line[1], line[0])))
