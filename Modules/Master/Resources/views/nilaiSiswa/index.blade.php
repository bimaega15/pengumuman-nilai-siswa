<x-backend-layout>
    @section('title', 'Data Nilai Siswa Page')
    <!-- BEGIN: Top Bar -->
    @section('breadcrumbs')
        {{ Breadcrumbs::render('nilaiSiswa') }}
    @endsection
    <!-- END: Top Bar -->

    <h2 class="intro-y text-lg font-medium mt-10">
        Data Nilai Siswa
    </h2>
    <div class="grid grid-cols-12 gap-6 mt-5">
        <div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mt-2">
            <button class="btn btn-primary shadow-md mr-2 btn-add"
                data-url="{{ secure_url('master/nilaiSiswa/create?siswa_id=' . $siswa->id) }}">Tambah
                Data</button>
        </div>

        <div class="intro-y col-span-12 mt-2">
            <table class="w-full">
                <tr>
                    <td>
                        <table class="w-full">
                            <tr>
                                <td>NISN</td>
                                <td>:</td>
                                <td>{{ $siswa->nisn_siswa }}</td>
                            </tr>
                            <tr>
                                <td>Kelas</td>
                                <td>:</td>
                                <td>
                                    <strong>{{ $siswa->kelas->nama_kelas }}</strong>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table class="w-full">
                            <tr>
                                <td>Nama</td>
                                <td>:</td>
                                <td>{{ $siswa->nama_siswa }}</td>
                            </tr>
                            <tr>
                                <td>No. HP</td>
                                <td>:</td>
                                <td>{{ $siswa->notelpon_siswa }}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <hr />
        <!-- BEGIN: Data List -->
        <div class="intro-y col-span-12 overflow-auto lg:overflow-visible">
            <table class="table table-report -mt-2" id="dataTable">
                <thead>
                    <tr>
                        <th class="whitespace-nowrap">NO.</th>
                        <th class="whitespace-nowrap">LINK NILAI</th>
                        <th class="whitespace-nowrap">DESKRIPSI</th>
                        <th class="whitespace-nowrap">STATUS</th>
                        <th class="text-center whitespace-nowrap">ACTIONS</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
        <!-- END: Data List -->

    </div>


    @push('custom_js')
        <script class="url_datatable" data-url="{{ secure_url('master/nilaiSiswa?siswa_id=' . $siswa->id) }}"></script>
        <script src="{{ secure_asset('js/master/nilaiSiswa/index.js') }}"></script>
    @endpush
</x-backend-layout>
