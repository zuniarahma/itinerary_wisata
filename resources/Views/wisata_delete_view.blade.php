<!DOCTPE html>
<html>
<head>
<title>View Wisata</title>
</head>
<body>
<table border = "1">

<a href="{{url('/insert')}}">insert</a>
<tr>
<td>ID Wisata</td>
<td>ID Kota</td>
<td>ID Jenis Wisata</td>
<td>Nama Wisata</td>
<td>Foto</td>
<td>Keterangan</td>
<td>Harga</td>
<td>Jam Buka</td>
<td>Jam Tutup</td>
<td>Latitude</td>
<td>Longitude</td>
<td>Action</td>
</tr>
@foreach ($wisata as $wisatas)
<tr>
<td>{{ $wisatas->id_wisata }}</td>
<td>{{ $wisatas->id_kota }}</td>
<td>{{ $wisatas->id_jenis_wisata }}</td>
<td>{{ $wisatas->nama_wisata }}</td>
<td>{{ $wisatas->foto }}</td>
<td>{{ $wisatas->keterangan }}</td>
<td>{{ $wisatas->harga }}</td>
<td>{{ $wisatas->jam_buka }}</td>
<td>{{ $wisatas->jam_tutup }}</td>
<td>{{ $wisatas->latitude }}</td>
<td>{{ $wisatas->longitude }}</td>
<td><a href = 'delete/{{ $wisatas->id_wisata }}'>Delete</a></td>
</tr>
@endforeach
</table>
</body>
</html>