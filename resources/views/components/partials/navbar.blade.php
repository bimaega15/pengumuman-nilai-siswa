@props(['sidebar' => ''])
<nav class="side-nav">
    <a href="#" class="intro-x flex items-center pl-5 pt-4 mt-3">
        <img alt="Midone - HTML Admin Template" class="w-6" src="{{ asset('backend') }}/dist/images/logo-putih.png">
        <span class="hidden xl:block text-white text-lg ml-3"> Nilai Siswa </span>
    </a>
    <div class="side-nav__devider my-6"></div>
    <ul>
        {!! $sidebar !!}
    </ul>
</nav>
