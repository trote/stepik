s = input()

result = ''
last_char = s[0];
n = 1
for ch in s[1:]:
    if last_char == ch:
        n += 1
    else:
        result += last_char + str(n)
        last_char = ch
        n = 1

print(result + last_char + str(n))
