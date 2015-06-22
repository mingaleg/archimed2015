x1, y1 = map(int, input().split())
x2, y2 = map(int, input().split())

x1 += 100
y1 += 100
x2 += 100
y2 += 100

N = max(x1, y1, x2, y2) + 2

field = [[None] * N for i in range(N)]

go = []

que = [(x1, y1)]

field[x1][y1] = 0

while que:
    x, y = que.pop(0)
    if x % 2:
        nx, ny = x, y+1
    else:
        nx, ny = x, y-1
    if 0 <= nx < N and 0 <= ny < N and field[nx][ny] is None:
        field[nx][ny] = field[x][y] + 1
        go.append((x, y, nx, ny, '—'))
        que.append((nx, ny))
    if y % 2:
        nx, ny = x+1, y
    else:
        nx, ny = x-1, y
    if 0 <= nx < N and 0 <= ny < N and field[nx][ny] is None:
        field[nx][ny] = field[x][y] + 1
        go.append((x, y, nx, ny, '|'))
        que.append((nx, ny))

print(field[x2][y2])
