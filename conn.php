<?php

$server     ="localhost";
$username   ="spacious";
$password   ="spacious";
$database   ="movies";

//connection creation

$conn = new mysqli($server, $username, $password, $database);

//collation

mysqli_set_charset($conn,'utf8');

/* Checking status
if($conn->connect_error){
    die("Connection failed: . $conn->connection_error");
}
else{
    echo "connection succesfull";
}