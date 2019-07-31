<!DOCTPE html>
<html>
<head>
<title>Kota Management | Delete</title>
</head>
<body>
<table border = "1">

<a href="{{url('/insertkota')}}">insert</a>
<tr>
<td>ID Kota</td>
<td>Nama Kota</td>
</tr>
@foreach ($jenis_kota as $jenis_kotas)
<tr>
<td>{{ $kotas->id_kota }}</td>
<td>{{ $kotas->nama_kota }}</td>
<td><a href = 'deletekota/{{ $kotas->id_kota }}'>Delete</a></td>
</tr>
@endforeach
</table>
</body>
</html>