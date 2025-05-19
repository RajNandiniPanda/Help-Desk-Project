<?php 
$dsn="mysql:dbname=itdesksupport;host=localhost";  //database source name

// credentials
$susername = 'root';
$password ='';

$conn = new PDO($dsn,$susername,$password);

if($conn){
    session_start();

    
}else{
    echo "Connection Failed";
}
?>