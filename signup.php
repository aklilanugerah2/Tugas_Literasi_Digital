<?php include 'includes/session.php'; ?>
<?php
  if(isset($_SESSION['user'])){
    header('location: cart_view.php');
  }

?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition register-page">
<div class="register-box">
  	<?php
      if(isset($_SESSION['error'])){
        echo "
          <div class='callout callout-danger text-center'>
            <p>".$_SESSION['error']."</p> 
          </div>
        ";
        unset($_SESSION['error']);
      }

      if(isset($_SESSION['success'])){
        echo "
          <div class='callout callout-success text-center'>
            <p>".$_SESSION['success']."</p> 
          </div>
        ";
        unset($_SESSION['success']);
      }
    ?>
  	<div class="register-box-body">
    	<p class="login-box-msg">Daftar</p>

    	<form action="register.php" method="POST">
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="firstname" placeholder="Nama Depan" value="<?php echo (isset($_SESSION['firstname'])) ? $_SESSION['firstname'] : '' ?>" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="lastname" placeholder="Nama Belakang" value="<?php echo (isset($_SESSION['lastname'])) ? $_SESSION['lastname'] : '' ?>"  required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
      	
        	<div class="form-group has-feedback">
        		<input type="email" class="form-control" name="email" placeholder="Email" value="<?php echo (isset($_SESSION['email'])) ? $_SESSION['email'] : '' ?>" required>
        		<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="text" class="form-control" name="address" placeholder="Alamat" value="<?php echo (isset($_SESSION['address'])) ? $_SESSION['address'] : '' ?>"  required>
            <span class="glyphicon glyphicon-road form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="text " class="form-control" name="contact_info" maxlength="12" onkeypress="return event.charCode >= 48 && event.charCode <=57" placeholder="No Hp/WA" value="<?php echo (isset($_SESSION['contact_info'])) ? $_SESSION['contact_info'] : '' ?>"  required>
            <span class="glyphicon glyphicon-signal form-control-feedback"></span>
          </div>
          
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
         
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="repassword" placeholder="Masukkan ulang password" required>
            <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button value="" type="submit" class="btn btn-primary btn-block btn-flat" name="signup"><i class="fa fa-pencil"></i> Daftar</button>
        		</div>
      		</div>
    	</form>
      <br>
      <a href="login.php">Saya sudah memiliki akun</a><br>
      <br>
      <a href="index.php"><i class="fa fa-home"></i>Beranda</a>
  	</div>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
</html>