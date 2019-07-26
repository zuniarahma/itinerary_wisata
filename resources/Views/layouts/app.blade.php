<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'ITINERARY') }}</title>

    <!-- Scripts -->
    {{-- <script src="{{ asset('js/app.js') }}" defer></script> --}}

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    {{-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> --}}
    {{-- <link href="{{ asset('css/custom.css') }}" rel="stylesheet"> --}}
    @yield('script-head')
        <style>
            body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: #333;
        }

        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a.active {
            background-color: #4CAF50;
            color: white;
        }

        .topnav-right {
            float: right;
        }

    </style>
    
</head>

<body>
     <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <!-- <a class="navbar-brand" href="#">{{ config('app.name', 'ITINERARY') }}</a> -->
                <a class="navbar-brand" href="#">ITINERARY</a>
              </div>
              <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                  {{-- <li class="active"><a href="#">Home</a></li> --}}
                  {{-- <li><a href="#">About</a></li>
                  <li><a href="#">Contact</a></li> --}}
                </ul>
                <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                  <!-- Authentication Links -->
                                    @guest
                                    <li>
                                        {{-- <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a> --}}
                                        <a href="{{ route('login') }}"><span class="glyphicon glyphicon-user"></span>
                                            {{ __('Login') }}</a>
                                    </li>
                                    <li>
                                        @if (Route::has('register'))
                                        {{-- <a class="glyphicon glyphicon-user" href="{{ route('register') }}">{{ __('Register') }}</a>
                                        --}}
                                        <a href="{{ route('register') }}"><span class="glyphicon glyphicon-user"></span>
                                            {{ __('Register') }}</a>
                                        @endif
                                    </li>
                                    @else
                                    <li class="dropdown dropdown-toggle">
                                        <ul>

                                            <div class="dropdown" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                            document.getElementById('logout-form').submit();">
                                                    {{ __('Logout') }}
                                                </a>

                                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                                    style="display: none;">
                                                    @csrf
                                                </form>
                                            </div>
                                        </ul>
                                    </li>
                                    @endguest
                                </ul>
                        </li>
                </ul>
              </div><!--/.nav-collapse -->
            </div>
    </nav>
    
    <div class="container">
        @yield('content')
    </div> <!-- /container -->

    @yield('script-foot')
</body>

</html>
