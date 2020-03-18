<?php 
require 'koneksi.php';

$nik = $_POST['nik'];
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$telp = $_POST['telp'];

mysqli_query($koneksi, "insert into masyarakat values('$nik','$nama','$username','$password','$telp')");
{
?>

	<script type="text/javascript">
		alert ('Data Berhasil Disimpan, Silahkan Gunakan Untuk Login');
		window.location = "index.php";
	</script>
<?php 
}
 ?>