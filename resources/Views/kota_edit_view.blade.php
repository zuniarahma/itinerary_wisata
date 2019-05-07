<!Doctype html>
<html>
<head>
<title>Kota Management | Edit</title>
</head>
<body>
<table border = "1">
<tr>
<td>ID Kota</td>
<td>Nama Kota</td>

</tr>
@foreach ($kota as $kotas)
<tr>
<td>{{ $kotas->id_kota }}</td>
<td>{{ $kotas->nama_kota }}</td>

<td><a href = 'edit/{{ $kotas->id_kota }}'>Edit</a></td>
</tr>
@endforeach
</table>
</body>
</html>