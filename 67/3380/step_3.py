d = int(input())
words = dict()
err = dict()
for _ in  range(d):
    word = input().lower()
    if not word in words:
        words[word] = 1

l = int(input())
for _ in range(l):
    line = input().lower()
    for word in line.split():
        if not word in words and not word in err:
            err[word] = 1

for word in err:
    print(word)
