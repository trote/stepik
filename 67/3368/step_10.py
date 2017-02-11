nums = [int(i) for i in input().split()]
result = []

if len(nums) <= 1:
    result = nums
else:
    for i in range(0, len(nums)):
        fst, snd = i - 1, i + 1
        if i == 0:
            fst, snd = -1, 1
        elif i == len(nums)-1:
            fst, snd = i - 1, 0
        result.append(nums[fst] + nums[snd])

for n in result:
    print(n, end=' ')
