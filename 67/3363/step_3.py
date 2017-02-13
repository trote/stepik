import re
import sys

file_input = sys.argv[1]
fi = open(file_input, 'r')
h = dict()
for line in fi:
    words = [s.lower() for s in line.strip().split()]
    for word in words:
        if h.get(word) == None:
            h[word] = 1
        else:
            h[word] += 1
fi.close()

top_word = None
for word in sorted(h.keys()):
    if top_word == None or h[word] > h[top_word]:
        top_word = word

print(top_word, h[top_word])
