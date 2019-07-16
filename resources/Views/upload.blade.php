<!DOCTYPE html>
<html>

<head>
    <title>Foto Manajemen</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">

</head>

<body>
    <div class="row">
        <div class="container">

            <h2 class="text-center my-5">Upload Foto Wisata</h2>

            <div class="col-lg-8 mx-auto my-5">

                @if(count($errors) > 0)
                <div class="alert alert-danger">
                    @foreach ($errors->all() as $error) {{ $error }}
                    <br/> @endforeach
                </div>
                @endif

                <form action="http://localhost/TA/itinerary/public//upload/proses" method="POST" enctype="multipart/form-data">
                    {{ csrf_field() }}

                    <div class="form-group">
                        <b>ID Wisata</b>
                        <select name="id_wisata" class="form-control">
                            @foreach ($wisata as $wisatas)
								<option value="{{ $wisatas->id_wisata }}">{{ $wisatas->nama_wisata }}</option>
                            @endforeach
                        </select>
                       
                    </div>

                    <div class="form-group">
                        <b>File Gambar</b>
                        <br/>
                        <input type="file" name="file">
                    </div>

                    <div class="form-group">
                        <b>Keterangan</b>
                        <textarea class="form-control" name="keterangan"></textarea>
                    </div>

                    <input type="submit" value="Upload" class="btn btn-primary">
                </form>

                <h4 class="my-5">Data</h4>

                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th width="1%">ID Wisata</th>
                            <th width="1%">File</th>
                            <th>Keterangan</th>
                            <th width="1%">OPSI</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($gambar as $g)
                        <tr>
                            <td>{{$g->id_wisata}}</td>
                            <td>
                                <img width="150px" src="{{ url('/data_file/'.$g->file) }}">
                            </td>
                            <td>{{$g->keterangan}}</td>
                            <td>
                                <a class="btn btn-danger" href="http://localhost/TA/itinerary/public/upload/hapus/{{ $g->id }}">HAPUS</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>
