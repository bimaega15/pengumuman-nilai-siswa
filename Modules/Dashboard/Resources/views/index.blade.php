<x-backend-layout>
    @section('title', 'Dashboard page')
    <div class="grid grid-cols-12 gap-6">
        <div class="col-span-12 2xl:col-span-9">
            <div class="grid grid-cols-12 gap-6">
                <!-- BEGIN: General Report -->
                <div class="col-span-12 mt-8">
                    <div class="intro-y flex items-center h-10">
                        <h2 class="text-lg font-medium truncate mr-5">
                            Jumlah Data
                        </h2>
                    </div>
                    <div class="grid grid-cols-12 gap-6 mt-5">
                        <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                            <div class="report-box zoom-in">
                                <div class="box p-5">
                                    <div class="flex">
                                        <i class="fa-solid fa-door-open fa-2x"></i>
                                    </div>
                                    <div class="text-3xl font-medium leading-8 text-right">{{ $kelas }}</div>
                                    <div class="text-base text-slate-700 mt-1">Kelas</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                            <div class="report-box zoom-in">
                                <div class="box p-5">
                                    <div class="flex">
                                        <i class="fa-solid fa-user-tie fa-2x"></i>
                                    </div>
                                    <div class="text-3xl font-medium leading-8 text-right">{{ $siswa }}</div>
                                    <div class="text-base text-slate-700 mt-1">Siswa</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                            <div class="report-box zoom-in">
                                <div class="box p-5">
                                    <div class="flex">
                                        <i class="fa-solid fa-user-lock fa-2x"></i>
                                    </div>
                                    <div class="text-3xl font-medium leading-8 text-right">{{ $user }}</div>
                                    <div class="text-base text-slate-700 mt-1">Pengelola</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                            <div class="report-box zoom-in">
                                <div class="box p-5">
                                    <div class="flex">
                                        <i class="fa-solid fa-key fa-2x"></i>
                                    </div>
                                    <div class="text-3xl font-medium leading-8 text-right">{{ $role }}</div>
                                    <div class="text-base text-slate-700 mt-1">Role</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-span-12 mt-5">
                    <div class="intro-y flex items-center h-10">
                        <h2 class="text-lg font-medium truncate mr-5">
                            Data Siswa
                        </h2>
                    </div>
                    <div class="grid grid-cols-12 gap-6 mt-5">
                        <div class="intro-y col-span-12 overflow-auto lg:overflow-visible">
                            <table class="table table-report -mt-2" id="dataTable">
                                <thead>
                                    <tr>
                                        <th class="whitespace-nowrap">NO.</th>
                                        <th class="whitespace-nowrap">NAMA SISWA</th>
                                        <th class="whitespace-nowrap">NISN</th>
                                        <th class="whitespace-nowrap">JENIS KELAMIN</th>
                                        <th class="whitespace-nowrap">NO. HP</th>
                                        <th class="whitespace-nowrap">KELAS</th>
                                        <th class="text-center whitespace-nowrap">ACTIONS</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @push('custom_js')
        <script class="url_root" data-url="{{ secure_url('/') }}"></script>
        <script class="url_datatable" data-url="{{ secure_url('dashboard') }}"></script>
        <script src="{{ secure_asset('js/dashboard/index.js') }}"></script>
    @endpush
</x-backend-layout>
