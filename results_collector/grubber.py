from ejudgepythonapi.ejudge_api import Contest
from reverse_users import reverse
from logins import logins
from names import getname

contest = Contest(2067)

results = contest.raw_request(action=94).split('\n')

while not results[0].startswith('<table width="100%" class="standings">'):
    results.pop(0)
while not results[-1].startswith('</table>'):
    results.pop(-1)

probs = list(map((lambda x: x.split('>')[1]), results.pop(0).split('</th><th')[2:-2]))

results = results[:-4]

RESULTS = {}

for line in results:
    teamname, *res = line.split('</td><td')[1:-2]
    teamname = teamname[17:]
    for i in range(len(res)):
        if '1' in res[i]:
            res[i] = '+'
        elif '0' in res[i]:
            res[i] = '-'
        else:
            res[i] = ''
    RESULTS[reverse(teamname)] = res

tables = {}

for region in logins:
    tables[region] = []
    for result in RESULTS:
        if result in logins[region]:
            tables[region].append({
                'place': 1,
                'status': RESULTS[result],
                'name': result,
                'solved': RESULTS[result].count('+'),
            })
    tables[region].sort(key=lambda x: x['solved'], reverse=True)
    for i in range(1, len(tables[region])):
        if tables[region][i]['solved'] != tables[region][i-1]['solved']:
            tables[region][i]['place'] = i + 1
        else:
            tables[region][i]['place'] = tables[region][i-1]['place']

from jinja2 import Template

template = Template(open('table.thtml').read())


for region in tables:
    table = tables[region]

    for row in table:
        row['name'] = getname(row['name'])

    res = template.render(title=region, probs=probs, table=table)

    with open('target/%s.html' % region, 'w') as fh:
        print(res, file=fh)

TOTAL = []
for region in tables:
    if region[0] == '!':
        continue
    for line in tables[region]:
        TOTAL.append(line)
        TOTAL[-1]['name'] = '[<a href="' + "/" + region + '.html">' + region + '</a>] ' + TOTAL[-1]['name']
    TOTAL.sort(key=lambda x: x['solved'], reverse=True)
    if len(TOTAL) > 0:
        TOTAL[0]['place'] = 1
    for i in range(1, len(TOTAL)):
        if TOTAL[i]['solved'] != TOTAL[i-1]['solved']:
            TOTAL[i]['place'] = i + 1
        else:
            TOTAL[i]['place'] = TOTAL[i-1]['place']

with open('target/total.html', 'w') as fh:
    table = TOTAL
    res = template.render(title='Общие результаты', probs=probs, table=table)
    for row in table:
        row['name'] = getname(row['name'])
    print(res, file=fh)
