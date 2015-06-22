from sys import argv
from random import randrange, randint, seed

seed(argv[2])

MAX_B = 10**9
MAX_F = 10**9
MAX_A = 10**9

N = int(argv[1])
B = randint(1, MAX_B)
F = randint(1, MAX_F)

A = [randint(0, MAX_A) for i in range(N)]

print(N, B, F)
print(" ".join(map(str, A)))
