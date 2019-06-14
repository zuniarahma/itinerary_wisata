<!DOCTYPE html>
<html>

<head>
    <title>Jenis Wisata Management | Edit</title>
</head>

<body>
    <form action="/TA/itinerary/public/editjenis/<?php echo $jenis_wisata[0]->id_jenis_wisata; ?>" method="post">
        <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
        <table>

            <tr>
                <td>ID Jenis Wisata</td>
                <td>
                <td><input type='text' name='id_jenis_wisata' value='<?php echo$jenis_wisata[0]->id_jenis_wisata; ?>' />
                </td>
            </tr>
            <tr>
                <td>Nama Jenis Wisata</td>
                <td><input type='text' name='nama_jenis' value='<?php echo$jenis_wisata[0]->nama_jenis; ?>' /></td>
            </tr>

            <tr>
                <td colspan='2'>
                    <input type='submit' value="Update Jenis Wisata" />
                </td>
            </tr>
        </table>
    </form>
</body>

</html>
