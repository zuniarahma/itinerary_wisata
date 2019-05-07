<!DOCTYPE html>
<html>
<head>
<title>Wisata Management | Edit</title>
</head>
<body>
<form action = "/TA/itinerary/public/edit/<?php echo $wisata[0]->id_wisata; ?>" method = "post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
<table>
<tr>
<td>ID Wisata</td>
<td><input type='text' name='id_wisata' 
value = '<?php echo$wisata[0]->id_wisata; ?>'/></td>
</tr>
<tr>
<td>ID Kota</td>
<td>
<select name="id_kota" value = '<?php echo$wisata[0]->id_kota; ?>'>
<option value="1">1. Kabupaten Bangkalan</option>
<option value="2">2. Kabupaten Banyuwangi</option>
</select></td>
</tr>
<tr>
<td>ID Jenis Wisata</td>
<td>
<select name="id_jenis_wisata" value = '<?php echo$wisata[0]->id_jenis_wisata; ?>'>
<option value="1">1. Gunuang</option>
<option value="2">2. Pantai</option>
</select></td>
</tr>
<tr>
<td>Nama Wisata</td>
<td><input type='text' name='nama_wisata' 
value = '<?php echo$wisata[0]->nama_wisata; ?>'/></td>
</tr>
<tr>
<td>Foto</td>
<td><td><input type='text' name='foto' 
value = '<?php echo$wisata[0]->foto; ?>'/></td></td>
</tr>
<tr>
<td>Keterangan</td>
<td><input type='text' name='keterangan' 
value = '<?php echo$wisata[0]->keterangan; ?>'/></td>
</tr>
<tr>
<td>Fasilitas</td>
<td><input type='text' name='fasilitas' 
value = '<?php echo$wisata[0]->fasilitas; ?>'/></td>
</tr>
<tr>
<td>Alamat</td>
<td><input type='text' name='alamat' 
value = '<?php echo$wisata[0]->alamat; ?>'/></td>
</tr>
<tr>
<td>Harga</td>
<td><input type='text' name='harga' 
value = '<?php echo$wisata[0]->harga; ?>'/></td>
</tr>
<tr>
<td>Jam Buka</td>
<td><input type='text' name='jam_buka' 
value = '<?php echo$wisata[0]->jam_buka; ?>'/></td>
</tr>
<tr>
<td>Jam Tutup</td>
<td><input type='text' name='jam_tutup' 
value = '<?php echo$wisata[0]->jam_tutup; ?>'/></td>
</tr>
<tr>
<td>Latitude</td>
<td><input type='text' name='latitude' 
value = '<?php echo$wisata[0]->latitude; ?>'/></td>
</tr>
<tr>
<td>Longitude</td>
<td><input type='text' name='longitude' 
value = '<?php echo$wisata[0]->longitude; ?>'/></td>
</tr>

<tr>
<td colspan = '2'>
<input type = 'submit' value = "Update Wisata" />
</td>
</tr>
</table>
</form>
</body>
</html> 