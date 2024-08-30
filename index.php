<?php
include "dashboard/config.php";
session_start();
if(isset($_SESSION['u_data'])){
  $role=$_SESSION['u_data'];
  $role_value=$role['4'];
  if($role_value==1){
    header('location:http://localhost/WorkReporting/dashboard/admin_profile.php');
  }elseif($role_value==0){
    header('location:http://localhost/WorkReporting/dashboard/emp_profile.php');
  }
}
?>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login-Employee</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="assets/style.css"> 
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container"> <a class="navbar-brand" href="#">Employee Portal</a> </div>
  </nav>
  <div class="container login_page">
    <div class="row m-2">
      <div class="col-md-5 border border-secondary m-auto p-4 login_form">
        <?php
        if(isset($_SESSION['error'])){
          $er=$_SESSION['error'];
          echo "<p class='text-white bg-danger p-2 text-center'>" .$er ."</p>";
                     unset($_SESSION['error']);
        }
        ?>
        <h5 class="text-center pb-2">Employee Login</h5>
        <form action="" method="POST">
          <div class="mb-2">
            <label>User ID</label>
            <input type="text" name="user_id" placeholder="User ID" class="form-control" required> </div>
          <div class="mb-2">
            <label>Password</label>
            <input type="password" name="user_pass" placeholder="Password" class="form-control" required> </div>
          <div class="mb-2">
            <button name="login_btn" class="btn btn-primary">Login</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
<?php
if(isset($_POST['login_btn'])){
      $user_id=$_POST['user_id'];
      $user_pass=$_POST['user_pass'];
      $sql="SELECT * FROM user_tbl WHERE user_id='$user_id' && user_pass='$user_pass'";
      $quer=mysqli_query($conn,$sql);
      $num=mysqli_num_rows($quer);
   if($num){
      $row=mysqli_fetch_assoc($quer);
      $user_data=array($row['fullname'],$row['user_des'],$row['user_scale'],$row['user_res'],$row['user_role'],$row['id']);
    $_SESSION['u_data']=$user_data;
    $role= $row['user_role'];
    if($role==1){
      header("location:dashboard/admin_profile.php");
    }else{
      header("location:dashboard/emp_profile.php");
    }
   }else
   {
    $_SESSION['error']="Invalid Details";
    header("location:index.php");
   }
}
?>