import sys

C = 299792458

v1, v2 = map(int, sys.stdin.readline().split())
print min(v1 + v2, C)
