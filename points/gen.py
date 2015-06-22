from random import choice

def genpass():
    return ''.join(choice('abcdefghijklmnopqrstuvwxyz') for i in range(8))

for ind, name in enumerate(open('names.txt').readlines()):
    ind += 1
    name = name.strip()
    password = genpass()
    print("== " + name + " ==")
    print("Онлайн-монитор: http://archimed.2015.shhdupnews.info/%s.html" % name)
    print("Редактирование названий команд: http://admin.archimed.2015.shhdupnews.info/index.php?id=%04d" % ind)
    print("Пароль для редактирования:", password)
    print()

    with open("teamnames/%04d.txt" % ind, "w") as fh:
        print(name, file=fh)
        print(password, file=fh)

