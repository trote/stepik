n = int(input())
text = "You have chosen a "
if n == 1:
    text += "square"
elif n == 2:
    text += "circle"
elif n == 3:
    text += "triangle"
elif n == 4:
    text += "rhombus"
else:
    text = "There is no such shape!"

print(text)
