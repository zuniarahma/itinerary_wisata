<!DOCTPE html>
    <html>

    <head>
        <title>Foto Wisata Management | Delete</title>
    </head>

    <body>
        <table border="1">

            <a href="{{url('/insertfoto')}}">insert</a>
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
                <td><a href='deletefoto/{{ $jenis_wisatas->id_jenis_wisata }}'>Delete</a></td>
            </tr>
            @endforeach
        </table>
    </body>

    </html>
