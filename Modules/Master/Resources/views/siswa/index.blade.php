<x-backend-layout>
    @section('title', 'Data Siswa Page')
    <!-- BEGIN: Top Bar -->
    @section('breadcrumbs')
        {{ Breadcrumbs::render('siswa') }}
    @endsection
    <!-- END: Top Bar -->

    <h2 class="intro-y text-lg font-medium mt-10">
        Data Siswa
    </h2>
    <div class="grid grid-cols-12 gap-6 mt-5">
        <div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mt-2">
            <button type="button" class="btn btn-primary shadow-md mr-2 btn-import" data-tw-toggle="modal"
                data-tw-target="#modal-import">Import Data</button>
            <button class="btn btn-primary shadow-md mr-2 btn-add"
                data-url="{{ secure_url('master/siswa/create') }}">Tambah
                Data</button>
        </div>

        <!-- BEGIN: Data List -->
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
        <!-- END: Data List -->
    </div>

    <div id="modal_import" class="modal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <form action="{{ secure_url('master/master/siswa/import/data') }}" method="post" id="form-submit-import">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="font-medium text-base mr-auto">
                            Import Data Siswa
                        </h2>
                    </div>
                    <!-- END: Modal Header -->
                    <!-- BEGIN: Modal Body -->
                    <div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
                        <div class="col-span-12 sm:col-span-6">
                            <label for="modal-form-1" class="form-label">Import File</label>
                            <input type="file" name="import" class="form-control">
                        </div>
                    </div>
                    <!-- END: Modal Body -->
                    <!-- BEGIN: Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" data-tw-dismiss="modal"
                            class="btn btn-outline-secondary w-20 mr-1">Batal</button>
                        <button type="button" class="btn btn-primary w-20 btn-submit-import">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>


    @push('custom_js')
        <script class="url_datatable" data-url="{{ secure_url('master/siswa') }}"></script>
        <script src="{{ secure_asset('js/master/siswa/index.js') }}"></script>
    @endpush
</x-backend-layout>
