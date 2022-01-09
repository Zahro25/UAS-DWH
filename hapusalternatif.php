<?php
include ("konfig/koneksi.php");

$sql= "DELETE FROM alternatif WHERE id_alternatif='" . $_GET["id"] . "'";

if(mysqli_query($conn,$sql)){
	echo "<script>window.open('index.php?a=alternatif&k=alternatif','_self');</script>";
}

?>