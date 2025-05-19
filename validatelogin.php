<?php 
include "connection.php";

// store email and pwd from user in a variable
$lun = $_POST['lname'];
$lpwd = $_POST['lpassword'];

// query to check whether given data exists in db

$query = "SELECT * FROM `member_details` WHERE uname = '". $lun ."'   AND password = '". $lpwd ."' ";

$res = $conn->query($query);

// var_dump($res);exit;

foreach($res as $admin)
{
     $mid = $admin['member_id'];
     $un = $admin['uname'];

    // $count1 = $admin['email'];
    // $count2 = $admin['password'];    
}

//  var_dump($un);exit;

// validation condition
if($mid > 0){
    // session definition or declare
    $_SESSION['member_id'] = $mid;
    $_SESSION['uname'] = $un;

    header('location:../itDeskSupport/admin/1addDept.php');
}else{
    header('location:../admin/1addDept.php');
}
?>
