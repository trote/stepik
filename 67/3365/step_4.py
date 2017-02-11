while True:
    try:
        n = input()
    except EOFError:
        break
    n = int(n)
    if n < 10:
        continue
    if n > 100:
        break
    print(n)
