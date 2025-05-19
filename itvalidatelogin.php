<?php 
include "connection.php";

// store email and pwd from user in a variable
$lun = $_POST['itname'];
$lpwd = $_POST['itpassword'];

// query to check whether given data exists in db

$query = "SELECT * FROM `it_team_details` WHERE it_user_name = '". $lun ."'   AND it_password = '". $lpwd ."' ";

$res = $conn->query($query);

// var_dump($res);exit;

foreach($res as $admin)
{
     $mid = $admin['it_team_id'];
     $un = $admin['it_user_name'];

    // $count1 = $admin['email'];
    // $count2 = $admin['password'];    
}

//  var_dump($un);exit;

// validation condition
if($mid > 0){
    // session definition or declare
    $_SESSION['it_team_id'] = $mid;
    $_SESSION['it_user_name'] = $un;

    header('location:../itDeskSupport/itteam/itViewComplain.php');
}else{
    header('location:../itDeskSupport/itteam/itViewComplain.php');
}
?>
