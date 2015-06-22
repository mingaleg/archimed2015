N, B, F = map(int, input().split())
A = list(map(int, input().split()))

from math import ceil

while len(A) > 1:
    cur, tm = A.index(min(A)), min(A)
    A.pop(cur)
    for i in range(len(A)):
        if A[i] < tm + B:
            A[i] += F * ceil((tm + B - A[i]) / F)

print(A[0] + B)
