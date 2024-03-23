@php
    $kelasId = isset($siswa) ? $siswa->kelas_id : '';
@endphp
@if (isset($siswa))
    <form method="post" action="{{ url('master/siswa/' . $siswa->id . '?_method=put') }}" id="form-submit">
    @else
        <form method="post" action="{{ url('master/siswa') }}" id="form-submit">
@endif
<x-modal.modal-body>
    <div class="col-span-6 sm:col-span-6 mb-2">
        <label for="" class="form-label">Nama Siswa</label>
        <input type="text" class="form-control" name="nama_siswa" placeholder="Nama siswa..."
            value="{{ isset($siswa) ? $siswa->nama_siswa : '' }}">
    </div>
    <div class="col-span-6 sm:col-span-6 mb-2">
        <label for="" class="form-label">NISN</label>
        <input type="number" class="form-control" name="nisn_siswa" placeholder="NISN..."
            value="{{ isset($siswa) ? $siswa->nisn_siswa : '' }}">
    </div>
    <div class="col-span-12 sm:col-span-12 mb-2">
        <label for="">Jenis Kelamin</label> <br>
        <div class="form-check mt-2">
            <input id="jeniskelamin_siswal" class="form-check-input" type="radio" name="jeniskelamin_siswa"
                value="L" {{ isset($siswa) ? ($siswa->jeniskelamin_siswa == 'L' ? 'checked' : '') : '' }}>
            <label class="form-check-label" for="jeniskelamin_siswal">Laki-laki</label>
        </div>
        <div class="form-check mt-2">
            <input id="jeniskelamin_siswap" class="form-check-input" type="radio" name="jeniskelamin_siswa"
                value="P" {{ isset($siswa) ? ($siswa->jeniskelamin_siswa == 'P' ? 'checked' : '') : '' }}>
            <label class="form-check-label" for="jeniskelamin_siswap">Perempuan</label>
        </div>
    </div>
    <div class="col-span-6 sm:col-span-6 mb-2">
        <label for="" class="form-label">No. Telepon</label>
        <input type="number" class="form-control" name="notelpon_siswa" placeholder="No Telpon..."
            value="{{ isset($siswa) ? $siswa->notelpon_siswa : '' }}">
    </div>
    <div class="col-span-6 sm:col-span-6 mb-2">
        <label for="" class="form-label">Alamat</label>
        <textarea class="form-control" id="alamat_siswa" placeholder="Alamat..." name="alamat_siswa">{{ isset($siswa) ? $siswa->alamat_siswa : '' }}</textarea>
    </div>

    <div class="col-span-6 sm:col-span-6 mb-2">
        <label for="" class="form-label">Kontak Darurat</label>
        <input type="number" class="form-control" name="kontakdarurat_siswa" placeholder="Kontak Darurat..."
            value="{{ isset($siswa) ? $siswa->kontakdarurat_siswa : '' }}">
    </div>
    <div class="col-span-6 sm:col-span-6 mb-2">
        <label for="" class="form-label">Nama Orang Tua</label>
        <input type="text" class="form-control" name="namaorangtua_siswa" placeholder="Nama Orang Tua..."
            value="{{ isset($siswa) ? $siswa->namaorangtua_siswa : '' }}">
    </div>
    <div class="col-span-6 sm:col-span-6 mb-2">
        <label for="" class="form-label">Email</label>
        <input type="text" class="form-control" name="email_siswa" placeholder="Nama Orang Tua..."
            value="{{ isset($siswa) ? $siswa->email_siswa : '' }}">
    </div>

    <div class="col-span-6 sm:col-span-6 mb-2">
        <label for="" class="form-label">Kelas</label>
        <select name="kelas_id" class="form-select select2">
            <option value="">Pilih Kelas</option>
            @foreach ($array_kelas as $item)
                <option value="{{ $item['id'] }}" {{ $item['id'] == $kelasId ? 'selected' : '' }}>
                    {{ $item['label'] }}</option>
            @endforeach
        </select>
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
<script type="text/javascript" src="{{ asset('js/master/siswa/form.js') }}"></script>
