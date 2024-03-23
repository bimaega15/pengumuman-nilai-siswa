@if (isset($nilaiSiswa))
    <form method="post" action="{{ url('master/nilaiSiswa/' . $nilaiSiswa->id . '?_method=put&siswa_id=' . $siswa_id) }}"
        id="form-submit">
    @else
        <form method="post" action="{{ url('master/nilaiSiswa/?siswa_id=' . $siswa_id) }}" id="form-submit">
@endif
<x-modal.modal-body>
    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="" class="form-label">Judul Penilaian</label>
        <input type="text" class="form-control" name="judul_nsiswa" placeholder="Judul Penilaian..."
            value="{{ isset($nilaiSiswa) ? $nilaiSiswa->judul_nsiswa : '' }}">
    </div>

    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="" class="form-label">Deskripsi nilai</label>
        <textarea class="form-control" id="deskripsi_nsiswa" placeholder="Deskripsi nilai..." name="deskripsi_nsiswa">{{ isset($nilaiSiswa) ? $nilaiSiswa->deskripsi_nsiswa : '' }}</textarea>
    </div>

    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="" class="form-label">Link Nilai</label>
        <input type="text" class="form-control" name="nilai_nsiswa" placeholder="Link Nilai Siswa..."
            value="{{ isset($nilaiSiswa) ? $nilaiSiswa->nilai_nsiswa : '' }}">
    </div>
    @php
        $selectedStatus = isset($nilaiSiswa) ? ($nilaiSiswa->status_nsiswa ? 'checked' : '') : '';
    @endphp
    <div class="col-span-12 sm:col-span-12 mb-2">
        <div>
            <label>Status</label>
            <div class="mt-2">
                <div class="form-check form-switch"> <input id="status_nsiswa" class="form-check-input" type="checkbox"
                        name="status_nsiswa" {{ $selectedStatus }}>
                    <label class="form-check-label" for="status_nsiswa">Aktif</label>
                </div>
            </div>
        </div>
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
<script type="text/javascript" src="{{ asset('js/master/nilaiSiswa/form.js') }}"></script>
