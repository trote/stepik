import sys;

h = dict()
for cl in range(1, 12):
    h[cl] = ['-']

fh = open(sys.argv[1])
for line in fh:
    ( cl, _, height ) = line.split()
    cl = int(cl)
    height = int(height)
    if str(h[cl][0]) == '-':
        h[cl][0] = height;
    else:
        h[cl].append(height)

for cl in sorted(h):
    if str(h[cl][0]) == '-':
        print(cl, h[cl][0])
    else:
        m = sum(h[cl]) / len(h[cl])
        print(cl, m)
