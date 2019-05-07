<!DOCTPE html>
<html>
<head>
<title>User Management | Delete</title>
</head>
<body>
<table border = "1">

<a href="{{url('/insert')}}">insert</a>
<tr>
<td>ID User</td>
<td>ID Role</td>
<td>Nama User</td>
<td>Email</td>
<td>Username</td>
<td>Password</td>
<td>Alamat</td>
</tr>
@foreach ($user as $users)
<tr>
<td>{{ $users->id_user }}</td>
<td>{{ $users->id_role }}</td>
<td>{{ $users->nama_user }}</td>
<td>{{ $users->email }}</td>
<td>{{ $users->username }}</td>
<td>{{ $users->password }}</td>
<td>{{ $users->alamat }}</td>
<td><a href = 'delete/{{ $users->id_user }}'>Delete</a></td>
</tr>
@endforeach
</table>
</body>
</html>