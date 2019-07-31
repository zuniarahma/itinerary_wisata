@extends('layouts.app')

<style>
        body {
            margin: 0;
            color: #6a6f8c;
            background: #c8c8c8;
            font: 600 16px/18px 'Open Sans', sans-serif;
        }
    
        *,
        :after,
        :before {
            box-sizing: border-box
        }
    
        .clearfix:after,
        .clearfix:before {
            content: '';
            display: table
        }
    
        .clearfix:after {
            clear: both;
            display: block
        }
    
        a {
            color: inherit;
            text-decoration: none
        }
    
        .login-wrap {
            width: 100%;
            margin: auto;
            max-width: 525px;
            min-height: 670px;
            position: relative;
            background: url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19);
        }
    
        .login-html {
            width: 100%;
            height: 100%;
            position: absolute;
            padding: 90px 70px 50px 70px;
            background: rgba(40, 57, 101, .9);
        }
    
        .login-html .sign-in-htm,
        .login-html .sign-up-htm {
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            position: absolute;
            transform: rotateY(180deg);
            backface-visibility: hidden;
            transition: all .4s linear;
        }
    
        .login-html .sign-in,
        .login-html .sign-up,
        .login-form .group .check {
            display: none;
        }
    
        .login-html .tab,
        .login-form .group .label,
        .login-form .group .button {
            text-transform: uppercase;
        }
    
        .login-html .tab {
            font-size: 22px;
            margin-right: 15px;
            padding-bottom: 5px;
            margin: 0 15px 10px 0;
            display: inline-block;
            border-bottom: 2px solid transparent;
        }
    
        .login-html .sign-in:checked+.tab,
        .login-html .sign-up:checked+.tab {
            color: #fff;
            border-color: #1161ee;
        }
    
        .login-form {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }
    
        .login-form .group {
            margin-bottom: 15px;
        }
    
        .login-form .group .label,
        .login-form .group .input,
        .login-form .group .button {
            width: 100%;
            color: #fff;
            display: block;
        }
    
        .login-form .group .input,
        .login-form .group .button {
            border: none;
            padding: 15px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, .1);
        }
    
        .login-form .group input[data-type="password"] {
            text-security: circle;
            -webkit-text-security: circle;
        }
    
        .login-form .group .label {
            color: #aaa;
            font-size: 12px;
        }
    
        .login-form .group .button {
            background: #1161ee;
        }
    
        .login-form .group label .icon {
            width: 15px;
            height: 15px;
            border-radius: 2px;
            position: relative;
            display: inline-block;
            background: rgba(255, 255, 255, .1);
        }
    
        .login-form .group label .icon:before,
        .login-form .group label .icon:after {
            content: '';
            width: 10px;
            height: 2px;
            background: #fff;
            position: absolute;
            transition: all .2s ease-in-out 0s;
        }
    
        .login-form .group label .icon:before {
            left: 3px;
            width: 5px;
            bottom: 6px;
            transform: scale(0) rotate(0);
        }
    
        .login-form .group label .icon:after {
            top: 6px;
            right: 0;
            transform: scale(0) rotate(0);
        }
    
        .login-form .group .check:checked+label {
            color: #fff;
        }
    
        .login-form .group .check:checked+label .icon {
            background: #1161ee;
        }
    
        .login-form .group .check:checked+label .icon:before {
            transform: scale(1) rotate(45deg);
        }
    
        .login-form .group .check:checked+label .icon:after {
            transform: scale(1) rotate(-45deg);
        }
    
        .login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm {
            transform: rotate(0);
        }
    
        .login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
            transform: rotate(0);
        }
    
        .hr {
            height: 2px;
            margin: 60px 0 50px 0;
            background: rgba(255, 255, 255, .2);
        }
    
        .foot-lnk {
            text-align: center;
        }
    
    </style>

    
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Reset Password') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('password.update') }}">
                        @csrf

                        <input type="hidden" name="token" value="{{ $token }}">

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ $email ?? old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Reset Password') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
