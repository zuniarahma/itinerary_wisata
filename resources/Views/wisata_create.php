<!DOCTYPE html>
<html>
<head>
<title>Wisata Management | Add</title>
</head>
<body>
<form action = "wisata_create" method = "post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
<table>
<tr>
<td>ID Wisata</td>
<td><input type='text' name='id_wisata' /></td>
</tr>
<tr>
<td>ID Kota</td>
<td>
<select name="id_kota">
<option value="1">1. Kabupaten Bangkalan</option>
<option value="2">2. Kabupaten Banyuwangi</option>
</select></td>
</tr>
<tr>
<td>ID Jenis Wisata</td>
<td>
<select name="id_jenis_wisata">
<option value="1">1. Gunuang</option>
<option value="2">2. Pantai</option>
</select></td>
</tr>
<tr>
<td>Nama Wisata</td>
<td><input type='text' name='nama_wisata' /></td>
</tr>
<tr>
<td>Foto</td>
<td><td><input type='text' name='foto' /></td></td>
</tr>
<tr>
<td>Keterangan</td>
<td><input type='text' name='keterangan' /></td>
</tr>
<tr>
<td>Harga</td>
<td><input type='text' name='harga' /></td>
</tr>
<tr>
<td>Jam Buka</td>
<td><input type='text' name='jam_buka' /></td>
</tr>
<tr>
<td>Jam Tutup</td>
<td><input type='text' name='jam_tutup' /></td>
</tr>
<tr>
<td>Latitude</td>
<td><input type='text' name='latitude' /></td>
</tr>
<tr>
<td>Longitude</td>
<td><input type='text' name='longitude' /></td>
</tr>
</tr>
<tr>
<td colspan = '2'>
<input type = 'submit' value = "Tambah Wisata"/>
</td>
</tr>
</table>
</form>
</body>
</html>

