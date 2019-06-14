<!DOCTYPE html>
<html>
<head>
<title>Kota Management | Edit</title>
</head>
<body>
<form action = "/TA/itinerary/public/edituser/<?php echo $user[0]->id_user; ?>" method = "post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
<table>

<tr>
<td>ID User</td>
<td>
<td><input type='text' name='id_user' 
value = '<?php echo$user[0]->id_user; ?>'/></td>
</tr>
<tr>
<td>ID Role</td>
<td>
<td><input type='text' name='id_role' 
value = '<?php echo$user[0]->id_role; ?>'/></td>
</tr>
<tr>
<td>Nama User</td>
<td><input type='text' name='nama_user' 
value = '<?php echo$user[0]->nama_user; ?>'/></td>
</tr>
<tr>
<td>Email</td>
<td>
<td><input type='text' name='email'
value = '<?php echo$user[0]->email; ?>'/></td>
</tr>
<tr>
<td>Username</td>
<td>
<td><input type='text' name='username' 
value = '<?php echo$user[0]->username; ?>'/></td>
</tr>
<tr>
<td>Password</td>
<td>
<td><input type='text' name='password' 
value = '<?php echo$user[0]->password; ?>'/></td>
</tr>
<tr>
<td>Alamat</td>
<td>
<td><input type='text' name='alamat' 
value = '<?php echo$user[0]->alamat; ?>'/></td>
</tr>

<tr>
<td colspan = '2'>
<input type = 'submit' value = "Update User" />
</td>
</tr>
</table>
</form>
</body>
</html> 