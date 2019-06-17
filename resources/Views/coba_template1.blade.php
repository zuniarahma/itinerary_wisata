<!DOCTYPE html>

<html>

<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Coba Template1</title>
    <link rel="stylesheet" type="text/css" href="template1.css">
    <link href = "{{asset ('css/bootstrap.min.css')}}" rel = "stylesheet">

</head>

<body>
<!--Section: Contact v.1-->
<section class="section pb-5">

    <!--Section heading-->
    <h2 class="section-heading h1 pt-4">Contact us</h2>
    <!--Section description-->
    <p class="section-description pb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error
      amet numquam iure provident voluptate esse quasi, veritatis totam voluptas nostrum quisquam eum porro a
      pariatur accusamus veniam.</p>
  
    <div class="row">
  
      <!--Grid column-->
      <div class="col-lg-5 mb-4">
  
        <!--Form with header-->
        <div class="card">
  
          <div class="card-body">
            <!--Header-->
            <div class="form-header blue accent-1">
              <h3><i class="fas fa-envelope"></i> Write to us:</h3>
            </div>
  
            <p>We'll write rarely, but only the best content.</p>
            <br>
  
            <!--Body-->
            <div class="md-form">
              <i class="fas fa-user prefix grey-text"></i>
              <input type="text" id="form-name" class="form-control">
              <label for="form-name">Your name</label>
            </div>
  
            <div class="md-form">
              <i class="fas fa-envelope prefix grey-text"></i>
              <input type="text" id="form-email" class="form-control">
              <label for="form-email">Your email</label>
            </div>
  
            <div class="md-form">
              <i class="fas fa-tag prefix grey-text"></i>
              <input type="text" id="form-Subject" class="form-control">
              <label for="form-Subject">Subject</label>
            </div>
  
            <div class="md-form">
              <i class="fas fa-pencil-alt prefix grey-text"></i>
              <textarea id="form-text" class="form-control md-textarea" rows="3"></textarea>
              <label for="form-text">Icon Prefix</label>
            </div>
  
            <div class="text-center mt-4">
              <button class="btn btn-light-blue">Submit</button>
            </div>
  
          </div>
  
        </div>
        <!--Form with header-->
  
      </div>
      <!--Grid column-->
  
      <!--Grid column-->
      <div class="col-lg-7">
  
        <!--Google map-->
        <div id="map-container-google-11" class="z-depth-1-half map-container-6" style="height: 400px">
          <iframe src="https://maps.google.com/maps?q=new%20delphi&t=&z=13&ie=UTF8&iwloc=&output=embed"
            frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
  
        <br>
        <!--Buttons-->
        <div class="row text-center">
          <div class="col-md-4">
            <a class="btn-floating blue accent-1"><i class="fas fa-map-marker-alt"></i></a>
            <p>San Francisco, CA 94126</p>
            <p>United States</p>
          </div>
  
          <div class="col-md-4">
            <a class="btn-floating blue accent-1"><i class="fas fa-phone"></i></a>
            <p>+ 01 234 567 89</p>
            <p>Mon - Fri, 8:00-22:00</p>
          </div>
  
          <div class="col-md-4">
            <a class="btn-floating blue accent-1"><i class="fas fa-envelope"></i></a>
            <p>info@gmail.com</p>
            <p>sale@gmail.com</p>
          </div>
        </div>
  
      </div>
      <!--Grid column-->
  
    </div>
  
  </section>
  <!--Section: Contact v.1-->

  <script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"> </ script>
  <script src = "{{asset ('js/bootstrap.min.js')}}"> </script>
</body>
</html>