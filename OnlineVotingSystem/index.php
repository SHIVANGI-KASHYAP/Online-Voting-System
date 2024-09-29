<?php 
    require_once("admin/inc/config.php");

    $fetchingElections = mysqli_query($db, "SELECT * FROM elections") OR die(mysqli_error($db));
    while($data = mysqli_fetch_assoc($fetchingElections))
    {
        $stating_date = $data['starting_date'];
        $ending_date = $data['ending_date'];
        $curr_date = date("Y-m-d");
        $election_id = $data['id'];
        $status = $data['status'];


        if($status == "Active")
        {
            $date1=date_create($curr_date);
            $date2=date_create($ending_date);
            $diff=date_diff($date1,$date2);
            
            if((int)$diff->format("%R%a") < 0)
            {
                // Update! 
                mysqli_query($db, "UPDATE elections SET status = 'Expired' WHERE id = '". $election_id ."'") OR die(mysqli_error($db));
            }
        }else if($status == "InActive")
        {
            $date1=date_create($curr_date);
            $date2=date_create($stating_date);
            $diff=date_diff($date1,$date2);
            

            if((int)$diff->format("%R%a") <= 0)
            {
                // Update! 
                mysqli_query($db, "UPDATE elections SET status = 'Active' WHERE id = '". $election_id ."'") OR die(mysqli_error($db));
            }
        }
        

    }
?>


<!DOCTYPE html>
<html>
<head>
	<title>Login - DIGI-VOTE</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;}
       
    </style>
</head>
<body>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="assets/images/logo-center.webp" class="brand_logo" alt="Logo">
					</div>
				</div>

                <?php 
                    if(isset($_GET['sign-up']))
                    {
                ?>     <h3 class="wlcm" style="margin-top:6rem ;">Add Voters</h3>
                        <div class="d-flex justify-content-center form_container" style="margin-top: 9px;">
                            <form method="POST">
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    </div>
                                    <input type="text" name="su_username" class="form-control input_user" placeholder="Username" required />
                                </div>
                                <div class="input-group mb-2">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input type="email" name="su_email_id" class="form-control input_pass" placeholder="Email-Id" required />
                                </div>
                                <div class="input-group mb-2">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input type="password" name="su_password" class="form-control input_pass" placeholder="Password" required />
                                </div>     
                                <div class="input-group mb-2">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input type="password" name="su_retype_password" class="form-control input_pass" placeholder="Retype Password" required />
                                </div>
                                
                                    <div class="d-flex justify-content-center mt-3 login_container">
                            <button type="submit" name="sign_up_btn" class="btn login_btn">Add Voter</button>
                        </div>
                            </form>
                        </div>
                
                        
                <?php
                    }else {
                ?>      <div class="wlcm"><h2  id=flexyy
                ><span class="spc">Welcome to </span><img src="assets/images/logoo.webp" width="175" height="40" id="logo"></h2><h3>Please Login</h3></div>
                        <div class="d-flex justify-content-center form_container">
                            
                            <form method="POST">
                                <div class="input-group mb-3">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    </div>
                                    <input type="email" name="email_id" class="form-control input_user" placeholder="Email-Id" required />
                                </div>
                                <div class="input-group mb-2">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <input type="password" name="password" class="form-control input_pass" placeholder="Password" required />
                                </div>
                                    <div class="d-flex justify-content-center mt-3 login_container">
                            <button type="submit" name="loginBtn" class="btn login_btn">Login</button>
                        </div>
                            </form>   
                        </div>
                
                        
                <?php
                    }
                    
                ?>

                <?php 
                    if(isset($_GET['registered']))
                    {
                ?>
                        <span class="bg-white text-success text-center my-3">Voter has been added successfully! </span>
                <?php
                    }else if(isset($_GET['invalid'])) {
                ?>
                        <span class="bg-white text-danger text-center my-3"> Passwords mismatched, please try again! </span>
                <?php
                    }else if(isset($_GET['not_registered'])) {
                ?>
                        <span class="bg-white text-warning text-center my-3"> Sorry, you are not registered! </span>
                <?php
                    }else if(isset($_GET['invalid_access'])) {
                ?>
                        <span class="bg-white text-danger text-center my-3">Access Denied! </span>
                <?php
                    }
                ?>
                       
			</div>
		</div>
	</div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

</body>
</html>

<?php 
    require_once("admin/inc/config.php");

    if(isset($_POST['sign_up_btn']))
    {   
        $su_username = mysqli_real_escape_string($db, $_POST['su_username']);
        $su_email_id = mysqli_real_escape_string($db, $_POST['su_email_id']);
        $su_password = mysqli_real_escape_string($db, sha1($_POST['su_password']));
        $su_retype_password = mysqli_real_escape_string($db, sha1($_POST['su_retype_password']));
        $user_role = "Voter"; 

        if($su_password == $su_retype_password)
        {
            // Insert Query 

            mysqli_query($db, "INSERT INTO users(username, email_id, password, user_role) VALUES('". $su_username ."', '". $su_email_id ."', '". $su_password ."', '". $user_role ."')") or die(mysqli_error($db));

        ?>
            <script> location.assign("index.php?sign-up=1&registered=1"); </script>
        <?php

        }else {
    ?>
            <script> location.assign("index.php?sign-up=1&invalid=1"); </script>
    <?php
        }
             
    }else if(isset($_POST['loginBtn']))
    {
        $email_id = mysqli_real_escape_string($db, $_POST['email_id']);
        $password = mysqli_real_escape_string($db, sha1($_POST['password']));
        

        // Query Fetch / SELECT
        $fetchingData = mysqli_query($db, "SELECT * FROM users WHERE email_id = '". $email_id ."'") or die(mysqli_error($db));

        
        if(mysqli_num_rows($fetchingData) > 0)
        {
            $data = mysqli_fetch_assoc($fetchingData);

            if($email_id == $data['email_id'] AND $password == $data['password'])
            {
                session_start();
                $_SESSION['user_role'] = $data['user_role'];
                $_SESSION['username'] = $data['username'];
                $_SESSION['user_id'] = $data['id'];
                
                if($data['user_role'] == "Admin")
                {
                    $_SESSION['key'] = "AdminKey";
            ?>
                    <script> location.assign("admin/index.php?homepage=1"); </script>
            <?php
                }else {
                    $_SESSION['key'] = "VotersKey";
            ?>
                    <script> location.assign("voters/index.php"); </script>
            <?php
                }

            }else {
        ?>
                <script> location.assign("index.php?invalid_access=1"); </script>
        <?php
            }


        }else {
    ?>
            <script> location.assign("index.php?sign-in=1&invalid_access=1"); </script>
    <?php

        }

    }

?>