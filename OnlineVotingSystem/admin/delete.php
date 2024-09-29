<?php   
 include 'inc/config.php';  
 if (isset($_GET['id'])) {  
      $id = $_GET['id'];  
      $query = "DELETE FROM `candidate_details` WHERE `id`";  
      $run = mysqli_query($db,$query);  
      if ($run) {  
           header('location:index.php?addCandidatePage=1');  
      }else{  
           echo "Error: ".mysqli_error($conn);  
      }  
 }  
 ?>  