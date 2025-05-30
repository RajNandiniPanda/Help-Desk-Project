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
        #error_message {
          color: red;

        }
      
    </style>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Sign Up</h3>
                <form action="insertmember.php" method="post">
                  <div class="form-group">
                    <label>Username</label>
                    <input type="text" class="form-control p_input" name="uname" id=username>
                  </div>

                  <div class="form-group">
                    <label>Admin Name</label>
                    <input type="text" class="form-control p_input" name="aname">
                  </div>

                  <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control p_input" name="email">
                  </div>

                  <div class="form-group">
                    <label>Contact Number</label>
                    <input type="number" class="form-control p_input" name="cno">
                  </div>

                  <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control p_input" name="password">
                  </div>

                  <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" class="form-control p_input" name="cpassword">
                  </div>

                  <div id="error_message"></div>

                  <div class="form-group d-flex align-items-center justify-content-between">
                    <div class="form-check">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input"> Remember me </label>
                    </div>
                    <!-- <a href="#" class="forgot-pass">Forgot password</a> -->
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block enter-btn" name="submit" id="register">Register</button>
                  </div>
                 
                  <p class="sign-up text-center">Already have an Account?<a href="login.php"> Login</a></p>

                  <!-- <p class="terms">By creating an account you are accepting our<a href="login.php"> Terms & Conditions</a></p> -->
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
        $(function() {
            bsCustomFileInput.init();
        });
    </script>

    <script>
        // Restricting duplicate state entry
        $(document).ready(function() {

            $('#register').click(function() {
                 //alert('hi');
                var reg = $('#username').val();       //username entry id 
                console.log(reg);

                // AJAX code
                $.ajax({
                    url: "checkregister.php",
                    data: {
                        ajax_register: reg       //assign a variable to reg in ajax=ajax_register
                    },
                    type: 'POST',
                    success: function(response) {
                        console.log(response);

                        if (response > 0) {                           
                            alert('Already exists!!!');
                           
                            return false;
                        }
                    }
                })
            });
        });
    </script>

<script>
        // Function to validate that password and confirm password are equal
        function validatePasswords() {
            var password = document.getElementsByName("password")[0].value;
            var confirmPassword = document.getElementsByName("cpassword")[0].value;
            var errorMessage = document.getElementById("error_message");

            // Check if passwords match
            if (password !== confirmPassword) {
                errorMessage.innerHTML = "Passwords do not match!";
                return false; // Prevent form submission
            } else {
                errorMessage.innerHTML = ""; // Clear the error message if passwords match
                return true; // Allow form submission
            }
        }

        // Attach the validation function to the form submission event
        window.onload = function() {
            var form = document.getElementsByTagName('form')[0];
            form.onsubmit = validatePasswords;
        };
    </script>




</body>