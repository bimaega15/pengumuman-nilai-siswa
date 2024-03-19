<x-backend-layout>
    @section('title', 'Roles Page')
    <!-- BEGIN: Top Bar -->
    @section('breadcrumbs')
        {{ Breadcrumbs::render('roles') }}
    @endsection
    <!-- END: Top Bar -->

    <h2 class="intro-y text-lg font-medium mt-10">
        Data Roles
    </h2>
    <div class="grid grid-cols-12 gap-6 mt-5">
        <div class="intro-y col-span-12 flex flex-wrap sm:flex-nowrap items-center mt-2">
            <button class="btn btn-primary shadow-md mr-2 btn-add"
                data-url="{{ secure_url('setting/roles/create') }}">Tambah
                Data</button>
        </div>


        <!-- BEGIN: Data List -->
        <div class="intro-y col-span-12 overflow-auto lg:overflow-visible">
            <table class="table table-report -mt-2" id="dataTable">
                <thead>
                    <tr>
                        <th class="whitespace-nowrap">NO.</th>
                        <th class="whitespace-nowrap">ROLES</th>
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
        <script class="url_datatable" data-url="{{ secure_url('setting/roles') }}"></script>
        <script src="{{ secure_asset('js/setting/roles/index.js') }}"></script>
    @endpush
</x-backend-layout>
