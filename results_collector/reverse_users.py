class ResultsException(Exception):
    pass

def reverse(teamname):
    if not teamname.startswith('User #'):
        raise ResultsException("Wrong teamname: %s" % teamname)
    teamname = teamname[6:]
    try:
        teamnum = int(teamname)
    except:
        raise ResultsException("Wrong teamnumber: %s" % teamname)
    if teamnum == 121905:
        return "archimed2015-0001"
    return "archimed2015-%04d" % (teamnum - 122914 + 1000)

def backreverse(login):
    if not login.startswith('archimed2015-'):
        raise ResultsException("Wrong login name: %s" % login)
    login = int(login[len('archimed2015-'):])
    if login == 1:
        return "User #121905"
    return "User #%d" % (login - 1000 + 122914)
