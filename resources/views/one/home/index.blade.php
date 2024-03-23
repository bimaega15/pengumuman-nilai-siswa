@php
    $setting = UtilsHelp::settingApp();
@endphp
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<head>
    <!-- Document Meta-->
    <meta charset="utf-8" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- IE Compatibility Meta-->
    <meta name="author" content="{{ $setting->nama_settings }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="{{ $setting->deskripsi_settings }}" />
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link href="{{ asset('upload/settings/icon/' . $setting->icon_settings) }}" rel="icon" />
    <!--  Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500&amp;display=swap" rel="stylesheet"
        type="text/css" />
    <!-- Stylesheets-->
    <link href="{{ asset('frontend/html/') }}/assets/css/vendor.css" rel="stylesheet" />
    <link href="{{ asset('frontend/html/') }}/assets/css/style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
    <!--
    Document Title
    =============================================
    -->
    <title>{{ $setting->nama_settings }}</title>
</head>

<body class="body-scroll">
    <!--
    Document Wrapper
    =============================================
    -->
    <div class="wrapper clearfix" id="wrapper">



        <!--
      Header
      =============================================
      -->
        <header class="header header-transparent header-sticky">
            <nav class="navbar navbar-sticky navbar-light navbar-expand-lg" id="primary-menu">
                <div class="container"> <a class="logo navbar-brand" href="index.html"><img class="logo logo-dark"
                            src="{{ asset('upload/settings/logo/' . $setting->logo_settings) }}"
                            alt="{{ $setting->logo_settings }}" style="height: 80px;" style="height: 50px;" /><img
                            class="logo logo-light" src="{{ asset('upload/settings/logo/' . $setting->logo_settings) }}"
                            alt="{{ $setting->logo_settings }}" style="height: 80px;" style="height: 50px;" /></a>
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                        data-target="#navbarContent" aria-expanded="false"><span
                            class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" data-scroll="scrollTo"
                                    href="#home">Home</a></li>
                        </ul>
                        <div class="module-container">
                            <!--module-btn-->
                            <div class="module module-cta"><a class="btn btn--white" href="{{ url('login') }}">
                                    <span>{{ Auth::id() !== null ? 'Masuk' : 'Login' }} <i
                                            class="icon-right-arrow"></i></span></a></div>
                        </div>
                    </div>
                    <!-- End .nav-collapse-->
                </div>
                <!-- End .container-->
            </nav>
            <!-- End .navbar-->
        </header>
        <!-- End Header-->
        <!-- Start hero #1-->
        <section class="hero hero-mailchimp" id="home">
            <!-- Button trigger modal -->
            <div class="bg-section"><img src="{{ asset('frontend/html/') }}/assets/images/background/bg-1.jpg"
                    alt="background" /></div>
            <div class="container">
                <div class="hero-cotainer text--center">
                    <div class="row">
                        <div class="col-12 col-md-8 offset-md-2 col-lg-8 offset-lg-2">
                            <div class="hero-content">
                                <div class="hero-headline mx-auto">Periksa nilai hasil ujian</div>
                                <div class="hero-bio">
                                    Siswa - siswa kami, kamu bisa periksa <br />
                                    nilai ujian kamu pada input masukan NISN dibawah ini yah: <br />
                                    1) Pertama masukan nilai NISN kamu <br />
                                    2) Klik tombol cari
                                    NISN</div>
                                <div class="hero-action text-center">
                                    <form class="mb-0 form-action mailchimp">
                                        <div class="input-group">
                                            <input class="form-control" type="text"
                                                placeholder="Masukan NISN Kamu..." required="required"
                                                name="nisn_siswa" />
                                            <button class="btn btn--primary btn-search-nisn"><span>CARI NISN<i
                                                        class="icon-right-arrow"></i></span></button>
                                        </div>
                                        <!--  End .input-group-->
                                    </form>
                                    <div class="subscribe-alert"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End .row-->
                </div>
                <!-- End .hero-content-->
            </div>
            <!-- End .container-->
            <div class="shape-bottom">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%"
                    height="166.368" viewBox="0 0 1921 166.368" preserveAspectRatio="none">
                    <defs>
                        <linearGradient id="linear-gradient5" x1="0.493" y1="0.858" x2="0.493"
                            y2="0.431" gradientUnits="objectBoundingBox">
                            <stop offset="0" stop-color="#fff" />
                            <stop offset="1" stop-color="#fff" />
                        </linearGradient>
                    </defs>
                    <path data-name="Path 2699"
                        d="M1921,0V69.536q-544.228,90.1-991.016-13.507Q384.2-70.538,0,165.368L1,0Z"
                        transform="translate(1921 166.368) rotate(180)" fill="url(#linear-gradient5)" />
                    <path data-name="Path 2700"
                        d="M1,170.087V99.049Q404.76-6.666,1005.023,111.056C1494.778,207.106,1922,4.719,1922,4.719l-1,165.368Z"
                        transform="translate(-1 -3.719)" fill="rgba(255,255,255,0.3)" />
                    <path data-name="Path 2701"
                        d="M1,170.837V99.049Q559.463-43.2,998.019,71.535,1546.805,215.11,1922,4.719l-1,166.118Z"
                        transform="translate(-1 -4.719)" fill="rgba(255,255,255,0.3)" />
                    <path data-name="Path 2702"
                        d="M1,170.086V103.051Q600.311-53.53,1033.037,50.024C1465.763,153.578,1787.43,69.253,1922,4.719l-1,166.118Z"
                        transform="translate(-1 -4.719)" fill="rgba(255,255,255,0.35)" />
                </svg>
            </div>
        </section>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="modalDetailNilai" data-backdrop="static" data-keyboard="false" tabindex="-1"
        aria-labelledby="modalDetailNilaiLabel" aria-hidden="true">
        <div class="modal-dialog" style="min-width: 70%;">
            <div class="modal-content" id="modal-body-content">
            </div>
        </div>
    </div>
    <!-- End #wrapper   -->
    <!--
    Footer Scripts
    =============================================
    -->
    <script src="{{ asset('frontend/html/') }}/assets/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="{{ asset('frontend/html/') }}/assets/js/vendor.js"></script>
    <script src="{{ asset('frontend/html/') }}/assets/js/functions.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>

    <script class="url_home" data-value="{{ url('/') }}"></script>
    <script src="{{ asset('js/home/index.js') }}"></script>
</body>

</html>
