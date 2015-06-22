from os import system
from sys import stdout

firstid = 121916
lastid = 122905

cmd = """curl 'http://informatics.msk.ru/cgi-bin/serve-control?SID=f0914e42c3f99061&action=764&op=86&other_user_id={}&contest_id=2067' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Referer: http://informatics.msk.ru/cgi-bin/serve-control?SID=f0914e42c3f99061&action=764&op=69&contest_id=2067&marked=11031nC03DP203Tmn22f1W______________________________________________________________________________________________________________________________________________________________________3' -H 'Cookie: MoodleSession=5ro13mcgl1ffnnk3uaaag72n85; MoodleSessionTest=2DR1lBn2aF; MOODLEID_=%25F0%25C4%2516H%25A6m; jsMath=font%3Asymbol%2Cwarn%3A0; EJSID=959439a6e12e345b' -H 'Connection: keep-alive' -H 'Cache-Control: max-age=0' --compressed --silent | grep "Password" | grep -Po "(?<=<tt>).*(?=</tt>)" > tmp
"""

for uid in range(firstid, lastid):
    system(cmd.format(uid))
    with open('tmp') as fh:
        password = fh.readline().strip()
    print("archimed-%04d"%(uid-firstid+2), password)
    stdout.flush()
