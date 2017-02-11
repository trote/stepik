s = input().upper()

n = s.count('c'.upper()) + s.count('g'.upper())

print(100 * n / len(s))
