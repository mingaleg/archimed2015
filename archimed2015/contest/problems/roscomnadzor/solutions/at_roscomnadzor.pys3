import sys

replacements = {
    '3': 'e',
    '0': 'o',
    '1': 'i',
    '7': 't',
    '4': 'a',
    '5': 's'
}

def replace(string):
    return ''.join(replacements.get(c, c) for c in string)


text = replace(sys.stdin.readline().strip())
pattern = sys.stdin.readline().strip()

if pattern in text:
    print('YES')
else:
    print('NO')

