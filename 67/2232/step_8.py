x = int(input())
h = int(input())
m = int(input())

time = h*60 + m + x
print(time//60)
print(time - time//60*60)
