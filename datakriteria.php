<div class="box-header">
    <h3 class="box-title">Data Kriteria</h3>
</div>
<div class="table-responsive">
<table class="table table-bordered table-striped">
<thead>
<tr>
<th>Id Kriteria</th>
<th>Nama Kriteria</th>
<th>Bobot</th>
<th>Poin 1</th>
<th>Poin 2</th>
<th>Poin 3</th>
<th>Poin 4</th>
<th>Poin 5</th>
<th>Sifat Kriteria</th>
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

$sql = "SELECT * FROM kriteria";
$result = $conn->query($sql);

while($row = $result->fetch_assoc()){
?>
<tr>
<td><?php echo $row['id_kriteria']; ?></td>
<td><?php echo $row['nama_kriteria']; ?></td>
<td><?php echo $row['bobot']; ?></td>
<td><?php echo $row['poin1']; ?></td>
<td><?php echo $row['poin2']; ?></td>
<td><?php echo $row['poin3']; ?></td>
<td><?php echo $row['poin4']; ?></td>
<td><?php echo $row['poin5']; ?></td>
<td><?php echo $row['sifat']; ?></td>
<td>
<a href="?a=kriteria&k=ubahk&id=<?php echo $row['id_kriteria']; ?>" class="btn btn-primary">Ubah</a>
<a href="hapus.php?id=<?php echo $row['id_kriteria']; ?>" class="btn btn-danger">Hapus</a>
</td>
</tr>
<?php
}
?>
</tbody>
</table>
