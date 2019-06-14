<!DOCTYPE html>
<html>
<head>
<title>Kota Management | Edit</title>
</head>
<body>
<form action = "/TA/itinerary/public/editkota/<?php echo $kota[0]->id_kota; ?>" method = "post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
<table>

<tr>
<td>ID Kota</td>
<td>
<td><input type='text' name='id_kota' 
value = '<?php echo$kota[0]->id_kota; ?>'/></td>
</tr>
<tr>
<td>Nama Kota</td>
<td><input type='text' name='nama_kota' 
value = '<?php echo$kota[0]->nama_kota; ?>'/></td>
</tr>

<tr>
<td colspan = '2'>
<input type = 'submit' value = "Update Kota" />
</td>
</tr>
</table>
</form>
</body>
</html> 