<!Doctype html>
<html>
<head>
<title>Kota Management | Edit</title>
</head>
<body>
<table border = "1">
<tr>
<td>ID User</td>
<td>ID Role</td>
<td>Nama User</td>
<td>Email</td>
<td>Username</td>
<td>Password</td>
<td>Alamat</td>

</tr>
@foreach ($kota as $kotas)
<tr>
<td>{{ $users->id_user }}</td>
<td>{{ $users->id_role }}</td>
<td>{{ $users->nama_user }}</td>
<td>{{ $users->email }}</td>
<td>{{ $users->username }}</td>
<td>{{ $users->password }}</td>
<td>{{ $users->alamat }}</td>

<td><a href = 'edituser/{{ $kotas->id_kota }}'>Edit</a></td>
</tr>
@endforeach
</table>
</body>
</html>