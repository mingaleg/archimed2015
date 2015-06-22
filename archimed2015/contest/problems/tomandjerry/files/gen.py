from sys import argv
from random import randint, seed, choice

alphabet = """qwertyuiop[]asdfghjkl;'zxcvbnm,./QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>?\|`1234567890-=~!@#$%^&*()_+"""

argv[1:10] = list(map(int, argv[1:10]))

M, N = argv[1], argv[2]
Xa, Ya, Ha, L = argv[3] - 1, argv[4] - 1, argv[5], argv[6]
Xc, Yc, Hc = argv[7] - 1, argv[8] - 1, argv[9]
seed(argv[10])

x = (Ya + Xa) // 2

if L + Ha + Hc + 1 > N:
    print('Height is too small')
    exit()
if Ya - Xa + 1 % 2 == 0:
    print("Anvil's width should be odd")
    exit()


field = [[' ']*M for i in range(N)]
for i in range(0, L):
    field[i][x] = '|'

for cx in range(L, L + Ha):
    for cy in range(Xa, Ya+1):
        field[cx][cy] = '#'

used = []
cy = randint(Xc, Yc)
field[N - 1][cy] = choice(alphabet)
used.append(cy)
cy = randint(Xc, Yc)
field[N - Hc][cy] = choice(alphabet)
used.append(cy)


for cy in range(Xc, Yc + 1):
    if cy in used:
        continue
    cx = randint(N - Hc, N - 1)
    field[cx][cy] = choice(alphabet)

for cx in range(N - Hc, N - 1):
    for cy in range(Xc, Yc + 1):
        if randint(0, 1):
            field[cx][cy] = choice(alphabet)

print(N, M)
for l in field:
    print(''.join(l))
