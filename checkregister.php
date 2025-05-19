<?php
include "../connection.php";

$reg = $_POST['ajax_register'];  //ajax_department from ajax
// var_dump($reg);exit;

$query = "SELECT COUNT(uname) as uname FROM `member_details` WHERE uname = '".$reg."' ";      
//all reds from database

$res = $conn->query($query);

foreach($res as $var){
    $count = $var['uname'];    //pass the name from query = .... as depart_ment 
}

echo $count;
?>