<?php 
include "connection.php";

    // check for password matching
    //from register page inputs

    if($_POST['password'] == $_POST['cpassword']){

        // Begin Transaction
        $conn->beginTransaction();

        // command/Query

        $qry = "INSERT INTO `member_details`(`uname`, `aname`,`email`, `cno`,`password`) VALUES (?,?,?,?,?)";

        // preparing for execution into database
        $res = $conn->prepare($qry);

        // get the data from frontend
        $data = array(
            $_POST['uname'],
            $_POST['aname'],
            $_POST['email'],
            $_POST['cno'],
            $_POST['password'],
        );

        // var_dump($data);exit;

        // execute
        $success = $res->execute($data);
   // var_dump($success);exit;

        if($success == true){
            $conn->commit();
            header('location:../admin/1addDept.php');
        }
        else{
            $conn->rollback();
            echo "Failed to Insert";
        } 
    }else{
        echo 'Password doesnot matched!!!';
    }
?>