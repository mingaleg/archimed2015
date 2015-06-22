<?php
    $regid = $_POST['id'];
    $password = $_POST['password'] or die("No password!");
    $myfile = fopen("$regid.txt", "r") or die("Wrong region id");
    $i = 0;
    $newnames = array();
    while (($line = fgets($myfile)) !== false) {
        if ($i == 0) {
            $regname = trim($line);
            print("<h1>$regname: Редактирование команд</h1><br/>");
            print("<form method='POST' action='modify.php'>\n");
        }
        if ($i == 1) {
            $truepass = trim($line);
            if ($truepass !== $password) {
                die("Wrong pasword!");
            }
        }
        if ($i < 2) {
            ++$i;
            continue;
        }
        $line = explode(" ", $line, 2);
        $login = trim($line[0]);
        $teamname = trim($line[1]);
        $newname[$login] = $_POST[$login];
    }
    print(var_dump($newnames));
    fclose($myfile);
?>
