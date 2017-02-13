import re
import sys

file_input = sys.argv[1]
file_output = sys.argv[2]

fi = open(file_input, 'r')
fo = open(file_output, 'w')
for line in fi:
    line = line.strip()
    for group in re.findall(r'(\D)(\d+)', line):
        fo.write(group[0] * int(group[1]))
    fo.write('\n')
fi.close()
fo.close()
