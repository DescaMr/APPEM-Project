<?php 
require 'koneksi.php';

$user = $_POST['username'];
$pass = $_POST['password'];

$sqli = mysqli_query ($koneksi, "select * from masyarakat where username='$user' and password='$pass'");
$cek = mysqli_num_rows($sqli);

 if ($cek>0)

 {
 	$data = mysqli_fetch_array($sqli);
 	session_start();
 	$_SESSION['nama']=$user;
 	$_SESSION['nik']=$data['nik'];
 	header('location:masyarakat.php');
 }

 else

 {
 	?>
		<script type="text/javascript">
		alert ('Username Atau Password tidak ditemukan');
		window.location = "index.php";
		</script>
<?php
 }
 	?>