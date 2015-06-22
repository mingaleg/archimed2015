import sys

if __name__ == '__main__':
    n, m = map(int, sys.stdin.readline().split())
    data = [sys.stdin.readline()[:m] for i in range(n)]
    anvil = [(i, j) for i in range(n) for j in range(m) if data[i][j] == '#']
    max_anvil_height = max([i for (i, j) in anvil])
    cat = [(i, j) for i in range(n) for j in range(m) if data[i][j] != ' ' and i > max_anvil_height]
    anvil_y = set(j for (i, j) in anvil)
    is_fuckup = any(j in anvil_y for (i, j) in cat)
    if is_fuckup:
        print 'YES'
    else:
        print 'NO'
