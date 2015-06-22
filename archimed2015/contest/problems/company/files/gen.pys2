from sys import argv
from random import seed, randint

seed(argv[3])

N = int(argv[1])
part = int(argv[2])
A = [randint(0, (N-1)/part) for i in range(N)]

print N
print " ".join(map(str, A))