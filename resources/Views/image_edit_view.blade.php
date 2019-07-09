<!Doctype html>
<html>

<head>
    <title>Foto Wisata Management | Edit</title>
</head>

<body>
    <table border="1">
        <tr>
            <td>ID Foto Wisata</td>
            <td>ID Wisata</td>
            <td>Nama Foto</td>

        </tr>

        @foreach ($foto as $fotos)
        <tr>
            <td>{{ $fotos->id_foto }}</td>
            <td>{{ $fotos->id_wisata }}</td>
            <td>{{ $fotos->nama_foto }}</td>

            <td><a href='editfoto/{{ $fotos->id_foto }}'>Edit</a></td>
        </tr>
        @endforeach
    </table>
</body>

</html>
