words = input().split()
h = dict()
for word in words:
    word = word.lower()
    if h.get(word) == None:
        h[word] = 1
    else:
        h[word] += 1

for word, count in h.items():
    print(word, count)
