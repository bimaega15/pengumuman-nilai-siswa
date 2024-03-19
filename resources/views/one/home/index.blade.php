@php
    $setting = UtilsHelp::settingApp();
@endphp
<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<head>
    <!-- Document Meta-->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- IE Compatibility Meta-->
    <meta name="author" content="{{ $setting->nama_settings }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="{{ $setting->deskripsi_settings }}" />
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link href="{{ secure_asset('upload/settings/icon/' . $setting->icon_settings) }}" rel="icon" />
    <!--  Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500&amp;display=swap" rel="stylesheet"
        type="text/css" />
    <!-- Stylesheets-->
    <link href="{{ secure_asset('frontend/html/') }}/assets/css/vendor.css" rel="stylesheet" />
    <link href="{{ secure_asset('frontend/html/') }}/assets/css/style.css" rel="stylesheet" />
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
                            src="{{ secure_asset('upload/settings/logo/' . $setting->logo_settings) }}"
                            alt="{{ $setting->logo_settings }}" style="height: 80px;" style="height: 50px;" /><img
                            class="logo logo-light"
                            src="{{ secure_asset('upload/settings/logo/' . $setting->logo_settings) }}"
                            alt="{{ $setting->logo_settings }}" style="height: 80px;" style="height: 50px;" /></a>
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                        data-target="#navbarContent" aria-expanded="false"><span
                            class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" data-scroll="scrollTo"
                                    href="#home">Home</a></li>

                            <li class="nav-item"><a class="nav-link" data-scroll="scrollTo" href="#step">Langkah</a>
                            </li>

                            <li class="nav-item"><a class="nav-link" data-scroll="scrollTo" href="#contact">Kontak</a>
                            </li>
                        </ul>
                        <div class="module-container">
                            <!--module-btn-->
                            <div class="module module-cta"><a class="btn btn--white" href="{{ secure_url('login') }}">
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
            <div class="bg-section"><img src="{{ secure_asset('frontend/html/') }}/assets/images/background/bg-1.jpg"
                    alt="background" /></div>
            <div class="container">
                <div class="hero-cotainer text--center">
                    <div class="row">
                        <div class="col-12 col-md-8 offset-md-2 col-lg-8 offset-lg-2">
                            <div class="hero-content">
                                <div class="hero-headline mx-auto">Periksa nilai hasil ujian</div>
                                <div class="hero-bio">
                                    Siswa - siswa kami, kamu bisa periksa nilai ujian kamu pada input
                                    masukan NISN dibawah ini yah, 1) Pertama masukan nilai NISN kamu 2) Klik tombol cari
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
        <!-- End #hero-->
        <div class="hero-screenshots">
            <div class="container">
                <div class="row">
                    <div class="col"><img class="img-fluid" src="{{ secure_asset('upload/home/bg-home.jpg') }}"
                            alt="Back to school" style="margin-bottom: 30px; border-radius: 15px;" /></div>
                </div>
            </div>
        </div>


        <!--
      Work step
      =============================================
      -->
        <section class="steps" id="step">
            <div class="bg-section"><img src="{{ secure_asset('frontend/html/') }}/assets/images/background/bg-1.jpg"
                    alt="background" /></div>
            <div class="container">
                <div class="row clearfix">
                    <div class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
                        <div class="heading heading-2 text-center">
                            <p class="heading-subtitle"><span>Langkah Pemeriksaan</span></p>
                            <h2 class="heading-title text-white">Bagaimana Melihat <br> Hasil ujian tersebut<h2>
                        </div>
                    </div>
                    <!-- End .col-lg-6-->
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="step-card step-line-left">
                            <div class="step-card-indicator"><span class="point"></span></div>
                            <div class="step-card-number">01</div>
                            <div class="step-card-title">Pastikan masukan nomor NISN kamu</div>
                            <div class="step-card-desc">
                                <p>Ini merupakan data nomor NISN kamu</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="step-card step-line-left step-line-right">
                            <div class="step-card-indicator"><span class="point"></span></div>
                            <div class="step-card-number">02</div>
                            <div class="step-card-title">Klik Button Cari NISN</div>
                            <div class="step-card-desc">
                                <p>Ini akan memproses untuk mencari hasil nilai ujian kamu</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="step-card step-line-right">
                            <div class="step-card-indicator"><span class="point"></span></div>
                            <div class="step-card-number">03</div>
                            <div class="step-card-title">Hasil Nilai</div>
                            <div class="step-card-desc">
                                <p>Ini merupakan tampilan hasil nilai kamu, dan kamu dapat akses link detail ujiannya
                                    pada laman ini</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- End #testimonials -->
        <div class="container">
            <div class="divider-1"></div>
        </div>
        <!--
      Clients  Section
      =============================================
      -->
        <section class="clients" id="clients">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-12">
                        <div class="owl-carousel " data-slide="6" data-slide-res="3" data-autoplay="true"
                            data-nav="false" data-dots="false" data-space="30" data-loop="true" data-speed="800">
                            <!--  Client #1   -->
                            <div class="client"><img
                                    src="{{ secure_asset('upload/settings/icon/' . $setting->icon_settings) }}"
                                    alt="{{ $setting->icon_settings }}" />
                            </div>
                            <!--  Client #2   -->
                            <div class="client"><img
                                    src="{{ secure_asset('upload/settings/logo/' . $setting->logo_settings) }}"
                                    alt="{{ $setting->logo_settings }}" />
                            </div>
                            <!--  Client #3-->
                            <div class="client"><img
                                    src="{{ secure_asset('upload/settings/perusahaan/' . $setting->perusahaan_settings) }}"
                                    alt="{{ $setting->perusahaan_settings }}" />
                            </div>
                        </div>
                    </div>
                    <!-- End .row-->
                </div>
            </div>
            <!-- End .container-->
        </section>
        <!-- End #clients-->
        <!--
      CTA  Section
      =============================================
      
      
      -->
        <section class="cta text-center" id="contact">
            <div class="shape-top"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                    width="100%" height="166.368" viewBox="0 0 1921 166.368" preserveAspectRatio="none">
                    <defs>
                        <linearGradient id="linear-gradient6" x1="0.493" y1="0.858" x2="0.493"
                            y2="0.431" gradientUnits="objectBoundingBox">
                            <stop offset="0" stop-color="#fff" />
                            <stop offset="1" stop-color="#fff" />
                        </linearGradient>
                    </defs>
                    <g transform="translate(1921 166.368) rotate(180)">
                        <path data-name="Path 2699"
                            d="M1921,0V69.536q-544.228,90.1-991.016-13.507Q384.2-70.538,0,165.368L1,0Z"
                            transform="translate(1921 166.368) rotate(180)" fill="url(#linear-gradient6)" />
                        <path data-name="Path 2700"
                            d="M0,165.368V94.33Q403.76-11.385,1004.023,106.337C1493.778,202.387,1921,0,1921,0l-1,165.368Z"
                            transform="translate(0 1)" fill="rgba(255,255,255,0.3)" />
                        <path data-name="Path 2701"
                            d="M0,166.118V94.33Q558.463-47.92,997.019,66.816,1545.805,210.391,1921,0l-1,166.118Z"
                            fill="rgba(255,255,255,0.3)" />
                        <path data-name="Path 2702"
                            d="M0,165.367V98.332Q599.311-58.249,1032.037,45.3C1464.763,148.859,1786.43,64.534,1921,0l-1,166.118Z"
                            fill="rgba(255,255,255,0.35)" />
                    </g>
                </svg>
            </div>
            <div class="bg-section">
                <img src="{{ secure_asset('frontend/html/') }}/assets/images/background/bg-1.jpg" alt="background" />
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-8 offset-md-2 col-lg-8 offset-lg-2 text-center">
                        <h3 class="mx-auto">Kita selalu menyediakan pelayanan terbaik</h3>
                        <p>Jika kiranya ananda kami mengalami suatu problem, dan ada pertanyaan khus yang kiranya
                            membingungkan ananda, kamu dapat menghubungi kontak dibawah ini.</p><a
                            class="btn btn--primary btn--rounded btn--hover-white mx-auto scroll-to"
                            href="https::/wa.me/6282277506232">
                            <span>Hubungi Admin <i class="icon-right-arrow"></i></span></a>
                    </div>
                    <!-- End .col-md-12-->
                </div>
                <!-- End .row-->
            </div>
            <!-- End .container-->
            <div class="shape-bottom"><svg xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="166.368"
                    viewBox="0 0 1921 166.368" preserveAspectRatio="none">
                    <defs>
                        <linearGradient id="linear-gradient3" x1="0.493" y1="0.858" x2="0.493"
                            y2="0.431" gradientUnits="objectBoundingBox">
                            <stop offset="0" stop-color="#fff" />
                            <stop offset="1" stop-color="#fff" />
                        </linearGradient>
                    </defs>
                    <path data-name="Path 2699"
                        d="M1921,0V69.536q-544.228,90.1-991.016-13.507Q384.2-70.538,0,165.368L1,0Z"
                        transform="translate(1921 166.368) rotate(180)" fill="url(#linear-gradient3)" />
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
        <!-- End #cta-->
        <!--
      Footer #1
      =============================================
      -->
        <footer class="footer" id="footer">
            <div class="footer-widgets-container">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="footer-widget"><a class="logo navbar-brand" href="index.html"><img
                                        class="logo logo-light"
                                        src="{{ secure_asset('upload/settings/logo/' . $setting->logo_settings) }}"
                                        alt="{{ $setting->logo_settings }}" style="height: 180px;" /></a>
                                <div class="footer-contact">
                                    <ul class="list-unstyled">
                                        <li> <a
                                                href="mailto:{{ $setting->email_settings }}">{{ $setting->email_settings }}</a>
                                        </li>
                                        <li> <a
                                                href="tel:{{ $setting->nohp_settings }}">{{ $setting->nohp_settings }}</a>
                                        </li>
                                    </ul>
                                </div>
                                <ul class="list-unstyled navigation">
                                    <li class="nav-item"><a class="nav-link" href="#home">Home</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#step">Langkah</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#contact">Kontak </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <hr />
            </div>
            <!--
        Copyrights
        =============================================
        -->
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-12 text--center">
                        <div class="footer-copyright"><span>2024 &copy; <a
                                    href="https://wa.me/6282277506232">{{ $setting->nama_settings }}</a>. All
                                rights reserved.</span>
                            <div class="footer-social">
                                <ul class="list-unstyled">
                                    <li> <a href="{{ $setting->facebook_settings }}"><i
                                                class="fab fa-facebook-f"></i></a></li>
                                    <li> <a href="{{ $setting->instagram_settings }}"><i
                                                class="fab fa-instagram"></i>
                                    <li> <a href="{{ $setting->linkedin_settings }}"><i
                                                class="fab fa-linkedin-in"></i>
                                    <li> <a href="{{ $setting->whatsapp_settings }}"><i
                                                class="fab fa-whatsapp"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End .container  -->
        </footer>
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
    <script src="{{ secure_asset('frontend/html/') }}/assets/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="{{ secure_asset('frontend/html/') }}/assets/js/vendor.js"></script>
    <script src="{{ secure_asset('frontend/html/') }}/assets/js/functions.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>

    <script class="url_home" data-value="{{ secure_url('/') }}"></script>
    <script src="{{ secure_asset('js/home/index.js') }}"></script>
</body>

</html>
