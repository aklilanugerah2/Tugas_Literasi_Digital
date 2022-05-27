<?php

	include 'includes/session.php';
	// echo print_r($_POST);
	// if(isset($_POST['firstname'])){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$email = $_POST['email'];
		$address = $_POST['address'];
		$contact_info = $_POST['contact_info'];
		
		$password = $_POST['password'];
		$repassword = $_POST['repassword'];

		$_SESSION['firstname'] = $firstname;
		$_SESSION['lastname'] = $lastname;
		$_SESSION['email'] = $email;
		$_SESSION['contact_info'] = $contact_info;


		
		
		
		if($password != $repassword){
			$_SESSION['error'] = 'Passwords did not match';
			header('location: signup.php');
		}
		else{
			$conn = $pdo->open();

			$stmt = $conn->prepare("SELECT COUNT(*) AS numrows FROM users WHERE email=:email");
			$stmt->execute(['email'=>$email]);
			$row = $stmt->fetch();
			if($row['numrows'] > 0){
				$_SESSION['error'] = 'Email already taken';
				header('location: signup.php');
			}
			else{
				$password = password_hash($password, PASSWORD_DEFAULT);
				$now = date('Y-m-d');

				//generate code
				$set='123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
				$code=substr(str_shuffle($set), 0, 12);

				try{
					$stmt = $conn->prepare("INSERT INTO users (contact_info,address,email, password, firstname, lastname, activate_code, created_on) VALUES (:contact_info,:address,:email, :password, :firstname, :lastname, :code, :now)");
					$stmt->execute(['contact_info'=>$contact_info,'address'=>$address,'email'=>$email, 'password'=>$password, 'firstname'=>$firstname, 'lastname'=>$lastname, 'code'=>$code, 'now'=>$now]);
					$userid = $conn->lastInsertId();

					$message = "
						<h2>Thank you for Registering.</h2>
						<p>Your Account:</p>
						<p>Email: ".$email."</p>
						<p>Password: ".$_POST['password']."</p>
						<p>Please click the link below to activate your account.</p>
						<a href='http://localhost/ecommerce/activate.php?code=".$code."&user=".$userid."'>Activate Account</a>
					";

					$_SESSION['firstname'] = "";
					$_SESSION['lastname'] = "";
					$_SESSION['email'] = "";
					$_SESSION['address'] = "";
					$_SESSION['contact_info'] = "";
				        $_SESSION['success'] = 'Silahkan hubungi admin untuk verifikasi akun. <a href="https://wa.me/+6285894447811?text=Permisi%20admin%20tolong%20verifikasi%20akun%20saya"> Wa Admin</a>';
						header('location: signup.php');


				}
				catch(PDOException $e){
					$_SESSION['error'] = $e->getMessage();
					header('location: register.php');
				}

				$pdo->close();

			}

		}

	// }
	// else{
	// 	$_SESSION['error'] = 'Fill up signup form first';
	// 	header('location: signup.php');
	// }

?>