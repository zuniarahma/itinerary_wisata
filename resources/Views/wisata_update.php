<!DOCTYPE html>
<html lang="en">

<head>
    <title>Wisata Management | Add</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>
    <div class="container">
        <h2>Update Wisata</h2>
        <form class="form-horizontal" action="editwisata"<?php echo $wisata[0]->id_wisata; ?>" method="post">
        <input type="hidden" name='id_wisata' value='<?php echo$wisata[0]->id_wisata; ?>'> 

            <div class="form-group">
                <label class="control-label col-sm-2" for="sel1">ID Kota</label>
                <div class="col-sm-10">
                    <select class="kota form-control" name="id_kota" id="sel1" value='<?php echo$wisata[0]->id_kota; ?>'>
                    
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="sel1">ID Jenis Wisata</label>
                <div class="col-sm-10">
                    <select class="jenis_wisata form-control" name="id_jenis_wisata" id="sel1" value='<?php echo$wisata[0]->id_jenis_wisata; ?>'>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Nama Wisata:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Nama Wisata" name='nama_wisata' value='<?php echo$wisata[0]->nama_wisata; ?>'> 
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Keterangan:</label>
                <div class="col-sm-10">
                    <textarea class="form-control" placeholder="Keterangan" rows="4" cols = "50"  name='keterangan' value='<?php echo$wisata[0]->keterangan; ?>'><?php echo$wisata[0]->keterangan; ?></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="inputlg">Fasilitas:</label>
                <div class="col-sm-10">
                <textarea class="form-control" placeholder="Fasilitas" name='fasilitas' rows="4" cols = "50" value='<?php echo$wisata[0]->fasilitas; ?>'> <?php echo$wisata[0]->fasilitas; ?></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Alamat:</label>
                <div class="col-sm-10">
                <textarea class="form-control" placeholder="Alamat" name='alamat' rows="4" cols ="50" value='<?php echo$wisata[0]->alamat; ?>'><?php echo$wisata[0]->alamat; ?></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Harga:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Harga" name='harga' value='<?php echo$wisata[0]->harga; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Jam Buka:</label>
                <div class="col-sm-10">
                    <input type="time" class="form-control" placeholder="Jam Buka" name='jam_buka' value='<?php echo$wisata[0]->jam_buka; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Jam Tutup:</label>
                <div class="col-sm-10">
                    <input type="time" class="form-control" placeholder="Jam Tutup" name='jam_tutup' value='<?php echo$wisata[0]->jam_tutup; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Latitude:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Latitude" name='latitude' value='<?php echo$wisata[0]->latitude; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Longitude:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Longitude" name='longitude' value='<?php echo$wisata[0]->longitude; ?>'>
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
    <script type="text/javascript" src="../js/isikota.js"></script>
    <script type="text/javascript" src="../js/isijenis_wisata.js"></script>
</body>

</html>
