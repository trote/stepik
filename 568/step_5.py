n = int(input())
text = "move "
if n == 1:
    text += "up"
elif n == 2:
    text += "down"
elif n == 3:
    text += "left"
elif n == 4:
    text += "right"
elif n == 0:
    text = "do not move"
else:
    text = "error!"
print(text)
