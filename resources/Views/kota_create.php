<!DOCTYPE html>
<html>
<head>
<title>Kota Management | Add</title>
</head>
<body>
<form action = "kota_create" method = "post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
<table>
<tr>
<td>ID Kota</td>
<td><input type='text' name='id_kota' /></td>
</tr>
<tr>
<td>Nama Kota</td>
<td><input type='text' name='nama_kota' /></td>
</tr>
</tr>
<tr>
<td colspan = '2'>
<input type = 'submit' value = "Tambah Kota/Kabupaten"/>
</td>
</tr>
</table>
</form>
</body>
</html>

