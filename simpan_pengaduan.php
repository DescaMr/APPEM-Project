<?php 
require 'koneksi.php';
$tgl = date('Y/m/d');
$nik = $_POST['nik'];
$isi = $_POST['isi_laporan'];
$foto = $_FILES['foto']['name'];
$file = $_FILES['foto']['tmp_name'];
$st = 0;

$sqli = mysqli_query($koneksi, "insert into pengaduan(tgl_pengaduan,nik,isi_laporan,foto,status) values('$tgl', '$nik', '$isi', '$foto', '$st')");

move_uploaded_file($file, "foto/".$foto);

if ($sqli)
{
	?>
	<script type="text/javascript">
		alert ('Data berhasil disimpan, Terimakasih telah mengisi pengaduan');
		window.location = "masyarakat.php";
	</script>
<?php
}
?>