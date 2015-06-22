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
        $teamname = trim($line[1]);
        print "$login: <input type='text' name='$login' value='$teamname'/><br/>\n";
    }
    print("Пароль: <input type='text' name='password'>");
    print("<input type='submit' value='Сохранить!'>\n");
    print("<input type='hidden' name='id' value='$regid'>\n");
    print("</form>\n");
    fclose($myfile);
?>
