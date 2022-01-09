<?php
include ("konfig/koneksi.php");
$sql= "DELETE FROM kriteria WHERE id_kriteria='" . $_GET["id"] . "'";

if(mysqli_query($conn,$sql)){
	echo "<script>window.open('index.php?a=kriteria&k=kriteria','_self');</script>";
}else{
 echo $a="delete from kriteria where id_kriteria='$_GET[id]'";
}

?>