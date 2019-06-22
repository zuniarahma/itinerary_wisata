<!DOCTYPE html>
<html lang="en">

<head>
    <title>Wisata Management | Add</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <h2>Insert Wisata</h2>
        <form class="form-horizontal" action="wisata_create" method="post">
            <div class="form-group">
                <label class="control-label col-sm-2" for="sel1">ID Kota</label>
                <div class="col-sm-10">
                    <select class="kota form-control" name="id_kota" id="sel1">
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="sel1">ID Jenis Wisata</label>
                <div class="col-sm-10">
                    <select class="jenis_wisata form-control" name="id_jenis_wisata" id="sel1">
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Nama Wisata:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Nama Wisata" name='nama_wisata'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Keterangan:</label>
                <div class="col-sm-10">
                    <textarea class="form-control" placeholder="Keterangan" rows="4" cols = "50"  name='keterangan'></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="inputlg">Fasilitas:</label>
                <div class="col-sm-10">
                <textarea class="form-control" placeholder="Fasilitas" name='fasilitas'rows="4" cols = "50"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Alamat:</label>
                <div class="col-sm-10">
                <textarea class="form-control" placeholder="Alamat" name='alamat'rows="4" cols = "50"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Harga:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Harga" name='harga'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Jam Buka:</label>
                <div class="col-sm-10">
                    <input type="time" class="form-control" placeholder="Jam Buka" name='jam_buka'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Jam Tutup:</label>
                <div class="col-sm-10">
                    <input type="time" class="form-control" placeholder="Jam Tutup" name='jam_tutup'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Latitude:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Latitude" name='latitude'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Longitude:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Longitude" name='longitude'>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </div>
        </form>
    </div>




    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script type="text/javascript" src="../resources/js/isikota.js"></script>
    <script type="text/javascript" src="../resources/js/isijenis_wisata.js"></script>
</body>

</html>
<!DOCTYPE html>
<html>

<head>
    <title>Wisata Management | Edit</title>
</head>

<body>
    <form action="/TA/itinerary/public/editwisata/<?php echo $wisata[0]->id_wisata; ?>" method="post">
        <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
        <table>
            <tr>
                <td>ID Wisata</td>
                <td><input type='text' name='id_wisata' value='<?php echo$wisata[0]->id_wisata; ?>' /></td>
            </tr>
            <tr>
                <td>ID Kota</td>
                <td>
                    <select name="id_kota" value='<?php echo$wisata[0]->id_kota; ?>'>
                        <option value="1">1. Kabupaten Bangkalan</option>
                        <option value="2">2. Kabupaten Banyuwangi</option>
                    </select></td>
            </tr>
            <tr>
                <td>ID Jenis Wisata</td>
                <td>
                    <select name="id_jenis_wisata" value='<?php echo$wisata[0]->id_jenis_wisata; ?>'>
                        <option value="1">1. Gunuang</option>
                        <option value="2">2. Pantai</option>
                    </select></td>
            </tr>
            <tr>
                <td>Nama Wisata</td>
                <td><input type='text' name='nama_wisata' value='<?php echo$wisata[0]->nama_wisata; ?>' /></td>
            </tr>
            <tr>
                <td>Keterangan</td>
                <td><input type='text' name='keterangan' value='<?php echo$wisata[0]->keterangan; ?>' /></td>
            </tr>
            <td>Fasilitas</td>
            <td><input type='text' name='fasilitas' value='<?php echo$wisata[0]->fasilitas; ?>' /></td>
            </tr>
            <td>Alamat</td>
            <td><input type='text' name='alamat' value='<?php echo$wisata[0]->alamat; ?>' /></td>
            </tr>
            <tr>
                <td>Fasilitas</td>
                <td><input type='text' name='fasilitas' value='<?php echo$wisata[0]->fasilitas; ?>' /></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td><input type='text' name='alamat' value='<?php echo$wisata[0]->alamat; ?>' /></td>
            </tr>
            <tr>
                <td>Harga</td>
                <td><input type='text' name='harga' value='<?php echo$wisata[0]->harga; ?>' /></td>
            </tr>
            <tr>
                <td>Jam Buka</td>
                <td><input type='text' name='jam_buka' value='<?php echo$wisata[0]->jam_buka; ?>' /></td>
            </tr>
            <tr>
                <td>Jam Tutup</td>
                <td><input type='text' name='jam_tutup' value='<?php echo$wisata[0]->jam_tutup; ?>' /></td>
            </tr>
            <tr>
                <td>Latitude</td>
                <td><input type='text' name='latitude' value='<?php echo$wisata[0]->latitude; ?>' /></td>
            </tr>
            <tr>
                <td>Longitude</td>
                <td><input type='text' name='longitude' value='<?php echo$wisata[0]->longitude; ?>' /></td>
            </tr>

            <tr>
                <td colspan='2'>
                    <input type='submit' value="Update Wisata" />
                </td>
            </tr>
        </table>
    </form>
</body>

</html>
