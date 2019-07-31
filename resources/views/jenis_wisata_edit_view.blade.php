<!Doctype html>
<html>

<head>
    <title>Jenis Wisata Management | Edit</title>
</head>

<body>
    <table border="1">
        <tr>
            <td>ID Jenis Wisata</td>
            <td>Nama Jenis Wisata</td>

        </tr>
        @foreach ($jenis_wisata as $jenis_wisatas)
        <tr>
            <td>{{ $jenis_wisatas->id_jenis_wisata }}</td>
            <td>{{ $jenis_wisatas->nama_jenis }}</td>

            <td><a href='editjenis/{{ $jenis_wisatas->id_jenis_wisata }}'>Edit</a></td>
        </tr>
        @endforeach
    </table>
</body>

</html>
