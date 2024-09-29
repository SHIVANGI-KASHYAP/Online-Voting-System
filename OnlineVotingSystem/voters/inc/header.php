<?php 
    session_start();
    require_once("config.php");

    if($_SESSION['key'] != "VotersKey")
    {
        echo "<script> location.assign('../../admin/inc/logout.php'); </script>";
        die;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VotersPanel - DIGI-VOTE</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    
    <div class="container-fluid" >
        <div class="text-white"  >
            <div class="col-11 my-auto" id="flexy">
                <img src="../assets/images/logoo.webp" width="175" height="40" id="logo">
                <h3 id="header-3"><small> <span class="userid"><i class="fa fa-user" aria-hidden="true"></i>  <?php echo $_SESSION['username']; ?></span> </small> </h3>
            </div>
        </div>

 






 





