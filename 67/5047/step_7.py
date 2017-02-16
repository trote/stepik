nums = [int(i) for i in list(input().strip())]
result = 'Обычный'
if (nums[0] + nums[1] + nums[2]) == (nums[3] + nums[4] + nums[5]):
    result = 'Счастливый'

print(result)
