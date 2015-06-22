N, M = map(int, input().split())

field = [input() for i in range(N)]

i = 0
while '#' not in field[i]:
    i += 1

Xa = field[i].index('#')
Ya = Xa
while Ya < M and field[i][Ya] == '#':
    Ya += 1
Ya -= 1

while '#' in field[i]:
    i += 1
while field[i] == ' ' * M:
    i += 1

Xc = 0
while field[i][Xc] == ' ':
    Xc += 1
Yc = Xc

for cx in range(i, N):
    for cy in range(0, M):
        if field[cx][cy] != ' ':
            Xc = min(Xc, cy)
            Yc = max(Yc, cy)

if Xa <= Xc <= Ya or Xa <= Yc <= Ya or Xc <= Xa <= Yc or Xc <= Ya <= Yc:
    print("YES")
else:
    print("NO")
