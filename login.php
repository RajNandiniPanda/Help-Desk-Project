<?php
include "connection.php";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Corona Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <style>
      .form-control.p_input {
        background-color: white;
        color: black;
        
      }
</style>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Admin Login</h3>
                <!-- form inputs -->
                <form action="validatelogin.php" method="post">
                <div class="form-group">
                    <label> Username </label>
                    <input type="text" class="form-control p_input" name="lname">
                  </div> 
                  <div class="form-group">
                    <label> Password </label>
                    <input type="password" class="form-control p_input" name="lpassword">
                  </div>  
                    <!-- <a href="#" class="forgot-pass">Forgot password</a> -->
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block enter-btn" style="color:white;">Login</a></button>
                  </div>
                  <p class="sign-up">Don't have an Account?<a href="register.php"> Sign Up</a></p>
                </form>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>
    <!-- endinject -->

    <script>
        function validatePassword() {
            // Get the values of the password and confirm password fields
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirm_password").value;
            var errorMessage = document.getElementById("error_message");

            // Check if passwords match
            if (password !== confirmPassword) {
                errorMessage.innerHTML = "Passwords do not match!";
                return false; // Prevent form submission
            } else {
                errorMessage.innerHTML = ""; // Clear error message if passwords match
                return true; // Allow form submission
            }
        }
    </script>












  </body>
</html>