def fib_mod(n, m):
    mod_len = len(str(m)) + 1
    a, b = 0, 1
    for _ in range(n):
        a, b = b, (a + b) % mod_len
    return a

def main():
    n, m = map(int, input().split())
    print(fib_mod(n, m) % m)


if __name__ == "__main__":
    main()
