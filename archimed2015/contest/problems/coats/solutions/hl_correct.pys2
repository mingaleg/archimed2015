x, d = map(float, raw_input().split())
n = int(raw_input())
temp = map(float, raw_input().split())
demi_coat = (temp[0] > x)
ans = 0
for t in temp[1:]:
    if demi_coat:
        demi_coat = (t > x - d)
    else:
        demi_coat = (t >= x + d)
    if demi_coat and t <= x:
        ans += 1
    if not demi_coat and t > x:
        ans += 1
print ans


