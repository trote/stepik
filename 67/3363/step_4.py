import re
import sys

file_input = sys.argv[1]
file_output = sys.argv[2]

fi = open(file_input, 'r')
fo = open(file_output, 'w')
data = []
for line in fi:
    data.append([int(rating) for rating in line.strip().split(';')[1:]])
fi.close()

avg = []
for data_for_student in data:
    fo.write(str(sum(data_for_student) / len(data_for_student)))
    fo.write('\n')
    for i in range(0, len(data_for_student)):
        if i >= len(avg):
            avg.append(0)
        avg[i] += data_for_student[i]

for acc in avg:
    fo.write(str(acc / len(data)))
    fo.write(' ')
fo.close()
