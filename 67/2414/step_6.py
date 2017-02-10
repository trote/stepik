year = int(input())

result = 'Обычный'
if year % 400 == 0 or (year % 4 == 0 and year % 100 != 0):
    result = 'Високосный'

print(result)
