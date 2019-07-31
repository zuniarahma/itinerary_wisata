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
