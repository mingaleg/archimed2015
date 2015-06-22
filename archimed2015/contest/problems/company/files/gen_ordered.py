from sys import argv
from random import seed, randint, shuffle

seed(argv[3])

N = int(argv[1])
A = []
if argv[2] == '-1':
    A = range(N-1, -1, -1)
else:
    A = range(N)
if argv[2] == '1':
    shuffle(A)
if argv[2] == '3':
    shuffle(A)
    changes = randint(1, 3)
    for i in range(changes):
        index = randint(0, N-1)
        A[index] += randint(0, N-1)
        A[index] = min(N-1, A[index])

print N
print " ".join(map(str, A))