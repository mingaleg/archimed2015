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

