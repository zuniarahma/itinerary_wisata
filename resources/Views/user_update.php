<!DOCTYPE html>
<html>

<head>
    <title>Kota Management | Edit</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>

<body>

    <div class="container">
        <h2>Update User</h2>
        <form class="form-horizontal" action="/TA/itinerary/public/edituser/<?php echo $user[0]->id_user; ?>" method="post">

            <div class="form-group">
                <label class="control-label col-sm-2">ID Role:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="ID Role" name='id_role' value='<?php echo$user[0]->id_role; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Nama User:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="Nama User" name='nama_user' value='<?php echo$user[0]->nama_user; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Email:</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" placeholder="Email" name='email' value='<?php echo$user[0]->email; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Username:</label>
                <div class="col-sm-10">
                    <input type="username" class="form-control" placeholder="Username" name='username' value='<?php echo$user[0]->username; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Password:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" placeholder="Password" name='password' value='<?php echo$user[0]->password; ?>'>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2">Alamat:</label>
                <div class="col-sm-10">
                    <textarea type="text" class="form-control" placeholder="Alamat" name='alamat'rows="4" value='<?php echo$user[0]->alamat; ?>'></textarea>
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
