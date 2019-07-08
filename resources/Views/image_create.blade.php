<!DOCTYPE html>

<html>

<head>

    <title>Laravel 5.7 image upload example - HDTuto.com</title>

    <link rel="stylesheet" href="http://getbootstrap.com/dist/css/bootstrap.css">

</head>

  

<body>

<div class="container">

   

    <div class="panel panel-primary">

      <div class="panel-heading"><h2>Laravel 5.7 image upload example - HDTuto.com</h2></div>

      <div class="panel-body">

   

        @if ($message = Session::get('success'))

        <div class="alert alert-success alert-block">

            <button type="button" class="close" data-dismiss="alert">×</button>

                <strong>{{ $message }}</strong>

        </div>

        <img src="images/{{ Session::get('image') }}">

        @endif

  

        @if (count($errors) > 0)

            <div class="alert alert-danger">

                <strong>Whoops!</strong> There were some problems with your input.

                <ul>

                    @foreach ($errors->all() as $error)

                        <li>{{ $error }}</li>

                    @endforeach

                </ul>

            </div>

        @endif

  

        <form action="{{ route('image.upload.post') }}" method="POST" enctype="multipart/form-data">

            @csrf

            <div class="row">

  

                <div class="col-md-6">

                    <input type="file" name="image" class="form-control">

                </div>

   

                <div class="col-md-6">

                    <button type="submit" class="btn btn-success">Upload</button>

                </div>

   

            </div>

        </form>

  

      </div>

    </div>

</div>

</body>

  

</html>

<!-- <!DOCTYPE html>
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

</html> -->
