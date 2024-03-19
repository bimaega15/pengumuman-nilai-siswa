@if (isset($kelas))
    <form method="post" action="{{ url('master/kelas/' . $kelas->id . '?_method=put') }}" id="form-submit">
    @else
        <form method="post" action="{{ route('kelas.store') }}" id="form-submit">
@endif
<x-modal.modal-body>
    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="" class="form-label">Nama Kelas</label>
        <input type="text" class="form-control" name="nama_kelas" placeholder="Nama kelas..."
            value="{{ isset($kelas) ? $kelas->nama_kelas : '' }}">
    </div>

    @php
        $kelasId = isset($kelas) ? $kelas->tingkat_kelas : '';
    @endphp

    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="" class="form-label">Tingkat Kelas</label>
        <select name="tingkat_kelas" class="form-select select2">
            <option value="">Pilih Kelas</option>
            @foreach ($tingkatKelas as $indexValue => $item)
                <option value="{{ $item }}" {{ $item == $kelasId ? 'selected' : '' }}>{{ $item }}
                </option>
            @endforeach
        </select>
    </div>
    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="" class="form-label">Kapasitas Kelas</label>
        <input type="number" class="form-control" name="kapasitas_kelas" placeholder="Tingkat Kelas..."
            value="{{ isset($kelas) ? $kelas->kapasitas_kelas : '' }}">
    </div>

    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="" class="form-label">Tahun Ajaran</label>
        <input type="text" class="form-control" name="tajaran_kelas" placeholder="Tahun Ajaran..."
            value="{{ isset($kelas) ? $kelas->tajaran_kelas : '' }}">
    </div>

    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="" class="form-label">Wali Kelas</label>
        <input type="text" class="form-control" name="wali_kelas" placeholder="Wali Kelas..."
            value="{{ isset($kelas) ? $kelas->wali_kelas : '' }}">
    </div>
</x-modal.modal-body>

<x-modal.modal-footer>
    <div class="form-group d-flex">
        <button type="button" data-tw-dismiss="modal" class="btn btn-outline-secondary w-20 mr-1">
            Cancel
        </button>
        <button type="button" class="btn btn-primary w-20" id="btn_submit">
            Submit
        </button>
    </div>
</x-modal.modal-footer>
</form>
<script type="text/javascript" src="{{ asset('js/master/kelas/form.js') }}"></script>
