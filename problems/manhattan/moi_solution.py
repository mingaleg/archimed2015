def penalty_odd_odd(x, y):
    if (x == 0) and (y == 0):
        return 0
    if (x <= 0) and (y <= 0):
        return 2 + (0 if x%2 or y%2 else 2)
    if (x >= 0) and (y >= 0):
        return 2 if x%2 and y%2 else 0
    if (x < 0) and (y > 0):
        return 2 if x%2 and not y%2 else 0
    if (x > 0) and (y < 0):
        return 2 if not x%2 and y%2 else 0
    raise Exception('Assert')

def penalty_odd_even(x, y):
    if (x == 0) and (y == 0):
        return 0
    if (x >= 0) and (y <= 0):
        return 2 + (0 if x%2 or y%2 else 2)
    if (x <= 0) and (y >= 0):
        return 2 if x%2 and y%2 else 0
    if (x > 0) and (y > 0):
        return 2 if x%2 and not y%2 else 0
    if (x < 0) and (y < 0):
        return 2 if not x%2 and y%2 else 0
    raise Exception('Assert')

def penalty_even_odd(x, y):
    if (x == 0) and (y == 0):
        return 0
    if (x <= 0) and (y >= 0):
        return 2 + (0 if x%2 or y%2 else 2)
    if (x >= 0) and (y <= 0):
        return 2 if x%2 and y%2 else 0
    if (x < 0) and (y < 0):
        return 2 if x%2 and not y%2 else 0
    if (x > 0) and (y > 0):
        return 2 if not x%2 and y%2 else 0
    raise Exception('Assert')

def penalty_even_even(x, y):
    if (x == 0) and (y == 0):
        return 0
    if (x >= 0) and (y >= 0):
        return 2 + (0 if x%2 or y%2 else 2)
    if (x <= 0) and (y <= 0):
        return 2 if x%2 and y%2 else 0
    if (x > 0) and (y < 0):
        return 2 if x%2 and not y%2 else 0
    if (x < 0) and (y > 0):
        return 2 if not x%2 and y%2 else 0
    raise Exception('Assert')

penalty = [
    [penalty_even_even, penalty_even_odd],
    [penalty_odd_even,  penalty_odd_odd],
]

x1, y1 = map(int, input().split())
x2, y2 = map(int, input().split())

print(abs(x1-x2)+abs(y1-y2)+penalty[x1%2][y1%2](x2-x1, y2-y1))
