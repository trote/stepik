a = int(input())
b = int(input())

min_num = a
max_num = b
if a > b:
    min_num = b
    max_num = a

num = min_num

while num % max_num != 0:
    num += min_num

print(num)
