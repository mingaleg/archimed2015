<?php
    $regid = $_POST['id'];
    $password = $_POST['password'] or die("No password!");
    $myfile = fopen("$regid.txt", "r") or die("Wrong region id");
    $i = 0;
    $newnames = array();
    while (($line = fgets($myfile)) !== false) {
        if ($i == 0) {
            $regname = trim($line);
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
	if ($login === "") continue;
        $teamname = trim($line[1]);
        $newnames[$login] = $_POST[$login];
    }
    fclose($myfile);
    ksort($newnames);
    $newfile = fopen("$regid.txt", "w") or die("Internal error, please contact contest admin: oleg@mingalev.net");
    fwrite($newfile, $regname . "\n");
    fwrite($newfile, $password . "\n");
    foreach($newnames as $login => $name) {
	fwrite($newfile, "$login $name\n");
    } 
    fclose($newfile);
    $now = time();
    header("Location: index.php?id=$regid&timestamp=$now");
    die();
?>
