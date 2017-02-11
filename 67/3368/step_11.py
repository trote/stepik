nums = [int(i) for i in input().split()]

nums.sort()
result = []

if len(nums) > 1:
    i = 1
    last_num = nums[0]
    for num in nums[1:]:
        if num == last_num:
            if i > 1:
                continue
            i += 1
            if i > 1:
                result.append(last_num)
        else:
            i = 1
            last_num = num

for num in result:
    print(num, end=' ')
