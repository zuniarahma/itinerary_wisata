<!DOCTYPE html>
<html>

<head>
    <title>Jenis Wisata Management | Edit</title>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>

    <div class="container">
        <h2>Insert Jenis Wisata</h2>
        <form class="form-horizontal" action="/TA/itinerary/public/editjenis/<?php echo $jenis_wisata[0]->id_jenis_wisata; ?>" method="post">

            <div class="form-group">
                <label class="control-label col-sm-2">Nama Jenis Wisata:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Nama Jenis Wisata" name='nama_jenis' value='<?php echo$jenis_wisata[0]->nama_jenis; ?>'>
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

</body>

</html>
