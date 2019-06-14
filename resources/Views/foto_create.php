<!DOCTYPE html>
<html>

<head>
    <title>Foto Wisata Management | Add</title>
</head>

<body>
    <form action="foto_create" method="post">
        <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
        <table>
            <tr>
                <td>ID Foto Wisata Wisata</td>
                <td><input type='text' name='id_foto' /></td>
            </tr>
            <tr>
                <td>ID Wisata</td>
                <td><input type='text' name='id_wisata' /></td>
            </tr>
            <tr>
                <td>Nama Foto Wisata</td>
                <td><input type='text' name='nama_foto' /></td>
            </tr>
            </tr>
            <tr>
                <td colspan='2'>
                    <input type='submit' value Jenis Wisata" />
                </td>
            </tr>
        </table>
    </form>
</body>

</html>
