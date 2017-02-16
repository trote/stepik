a = float(input())
b = float(input())
op = input().strip()
res = a
division_by_zero = 'Деление на 0!';
if op == '+':
    res += b
elif op == '-':
    res -= b
elif op == '*':
    res *= b
elif op == 'pow':
    res **= b
elif op == '/':
    if b != 0:
        res /= b
    else:
        res = division_by_zero
elif op == 'mod':
    if b != 0:
        res = a % b
    else:
        res = division_by_zero
elif op == 'div':
    if b != 0:
        res = a // b
    else:
        res = division_by_zero

print(res)
