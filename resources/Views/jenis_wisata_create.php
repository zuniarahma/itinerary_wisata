<!DOCTYPE html>
<html>
<head>
<title>Jenis Wisata Management | Add</title>
</head>
<body>
<form action = "jenis_wisata_create" method = "post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
<table>
<tr>
<td>ID Jenis Wisata</td>
<td><input type='text' name='id_jenis_wisata' /></td>
</tr>
<tr>
<td>Nama Jenis Wisata</td>
<td><input type='text' name='nama_jenis' /></td>
</tr>
</tr>
<tr>
<td colspan = '2'>
<input type = 'submit' value = "Tambah Jenis Wisata"/>
</td>
</tr>
</table>
</form>
</body>
</html>

