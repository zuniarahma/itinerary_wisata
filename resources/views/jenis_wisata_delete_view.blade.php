<!DOCTPE html>
<html>
<head>
<title>Jenis Wisata Management | Delete</title>
</head>
<body>
<table border = "1">

<a href="{{url('/insert')}}">insert</a>
<tr>
<td>ID Jenis Wisata</td>
<td>Nama Jenis Wisata</td>
</tr>
@foreach ($jenis_wisata as $jenis_wisatas)
<tr>
<td>{{ $jenis_wisatas->id_jenis_wisata }}</td>
<td>{{ $jenis_wisatas->nama_jenis }}</td>
<td><a href = 'deletejenis/{{ $jenis_wisatas->id_jenis_wisata }}'>Delete</a></td>
</tr>
@endforeach
</table>
</body>
</html>