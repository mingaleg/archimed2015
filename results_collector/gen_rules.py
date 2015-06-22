from reverse_users import backreverse

def make_rule(logins):
    if len(logins) == 0:
        return "(false)"
    if len(logins) == 1:
        return 'login == "%s"' % back_reverse(logins[0])
    for i in range(1, len(logins)):
        if int(logins[i-1][-4:]) + 1 !=  int(logins[i][-4:]):
            return make_rule(logins[:i]) + " || " + make_rule(logins[i:])
    return '(login >= "%s" && login <= "%s")' % (backreverse(logins[0]), backreverse(logins[-1]))

for i in range(1, 37):
    logins = []
    with open('teamnames/%04d.txt' % i) as fh:
        skip = 2
        for l in fh:
            try:
                if skip == 0:
                    logins.append(l.split()[0])
            except:
                pass
            skip = max(skip-1, 0)
    logins.sort()
    print(make_rule(logins))
