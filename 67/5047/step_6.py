n = int(input())
result = 'программист'
mod = n % 10
mod2 = n % 100
if mod == 0 or 5 <= mod <= 9 or 11 <= mod2 <= 19:
    result += 'ов'
elif 2 <= mod <= 4:
    result += 'а'

print(n, result)
