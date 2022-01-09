<div class="box-header">
    <h3 class="box-title">Data Alternatif</h3>
</div>
<div class="table-responsive">
<table class="table table-bordered table-striped">
<thead>
<tr>
<th>Id Alternatif</th>
<th>Nama Alternatif</th>
<th>Pilihan</th>
</tr>
</thead>
<tbody>
<?php
// include ("konfig/koneksi.php");
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "topsis";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT * FROM alternatif";
$result = $conn->query($sql);

while($row = $result->fetch_assoc()){
?>
<tr>
<td><?php echo $row['id_alternatif']; ?></td>
<td><?php echo $row['nm_alternatif']; ?></td>
<td>
<a href="?a=alternatif&k=ubaha&id=<?php echo $row['id_alternatif']; ?>" class="btn btn-primary">Ubah</a>
<a href="hapusalternatif.php?id=<?php echo $row['id_alternatif']; ?>" class="btn btn-danger">Hapus</a>
</td>
</tr>
<?php
}
?>
</tbody>
</table>
