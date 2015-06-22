import os

names = {
}

for flname in os.listdir('teamnames'):
    if not flname.endswith('.txt'):
        continue
    with open('teamnames/' + flname) as fh:
        i = 0
        for line in fh:
            if i < 2:
                i += 1
                continue
            line = line.strip()
            if not line:
                continue
            try:
                teamlogin, teamname = line.split(' ', 1)
            except:
                teamlogin, teamname = line, line
            names[teamlogin] = teamname
            i += 1

def getname(teamlogin):
    return names.get(teamlogin, teamlogin)
