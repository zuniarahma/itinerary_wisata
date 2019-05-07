<!DOCTYPE html>
<html>
<head>
<title>User Management | Add</title>
</head>
<body>
<form action = "user_create" method = "post">
<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
<table>
<tr>
<td>ID User</td>
<td><input type='text' name='id_user' /></td>
</tr>
<tr>
<td>ID Role</td>
<td><input type='text' name='id_role' /></td>
</tr>
<tr>
<td>Nama User</td>
<td><input type='text' name='nama_user' /></td>
</tr>
<tr>
<td>Email</td>
<td><input type='text' name='email' /></td>
</tr>
<tr>
<td>Username</td>
<td><input type='text' name='username' /></td>
</tr>
<tr>
<td>Password</td>
<td><input type='text' name='password' /></td>
</tr>
<tr>
<td>Alamat</td>
<td><input type='text' name='alamat' /></td>
</tr>
</tr>
<tr>
<td colspan = '2'>
<input type = 'submit' value = "Tambah User"/>
</td>
</tr>
</table>
</form>
</body>
</html>

