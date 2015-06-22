<?php
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
header("Cache-Control: no-cache");
header("Pragma: no-cache");
?>

<html>
    <head>
	<title>Турнир Архимеда 2015: Редактирование команд</title>
	<meta charset="utf-8">
<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />
    </head>
<body>
<?php
    $regid = $_GET['id'];
    $myfile = fopen("$regid.txt", "r") or die("Wrong region id");
    $i = 0;
    $regname = "Undefinded";
    while (($line = fgets($myfile)) !== false) {
        if ($i == 0) {
            $regname = trim($line);
            print("<h1>$regname: Редактирование команд</h1><br/>");
            print("<form method='POST' action='modify.php'>\n");
        }
        if ($i < 2) {
            ++$i;
            continue;
        }
        $line = explode(" ", $line, 2);
        $login = trim($line[0]);
	if ($login === "") continue;
        $teamname = trim($line[1]);
        print "$login: <input style='width: 800px;' type='text' name='$login' value='$teamname'/><br/>\n";
    }
    print("Пароль: <input type='text' name='password'>");
    print("<input type='submit' value='Сохранить!'>\n");
    print("<input type='hidden' name='id' value='$regid'>\n");
    print("</form>\n");
    fclose($myfile);
?>
</body>
</html>
