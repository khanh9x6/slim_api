<?php

 date_default_timezone_set('Asia/Ho_Chi_Minh');

function getConnection()
{
    $dbhost = "localhost";
    $dbuser = "root";
    $dbpass = "";

    $dbname = "news";
    $dbh = new PDO("mysql:host=$dbhost;dbname=$dbname;charset=utf8", $dbuser, $dbpass);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    return $dbh;
}

?>