a = int(input())
b = int(input())
h = int(input())

if h < a:
    result = 'Недосып'
elif h > b:
    result = 'Пересып'
else:
    result = 'Это нормально'

print(result)
