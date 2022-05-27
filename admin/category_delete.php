<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("DELETE FROM category WHERE id=:id");
			$stmt->execute(['id'=>$id]);

			$_SESSION['success'] = 'Kategori berhasil dihapus';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	else{
		$_SESSION['error'] = 'Pilih kategori terlebih dahulu';
	}

	header('location: category.php');
	
?>