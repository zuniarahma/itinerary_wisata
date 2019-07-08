<!DOCTYPE html>
<html>
<head>
<title>Foto Wisata Management | Edit</title>
</head>
<body>
<form action = "/TA/itinerary/public/editfoto/<?php echo $foto[0]->id_foto; ?>" method = "post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
<table>

<tr>
<td>ID Foto Wisata</td>
<td>
<td><input type='text' name='id_foto' 
value = '<?php echo$foto[0]->id_foto; ?>'/></td>
</tr>
<tr>
<td>ID Wisata</td>
<td><input type='text' name='id_wisata' 
value = '<?php echo$foto[0]->id_wisata; ?>'/></td>
</tr>
<tr>
<td>Nama Foto</td>
<td><input type='text' name='nama_jenis' 
value = '<?php echo$foto[0]->nama_foto; ?>'/></td>
</tr>

<tr>
<td colspan = '2'>
<input type = 'submit' value = "Update Foto Wisata" />
</td>
</tr>
</table>
</form>
</body>
</html> 