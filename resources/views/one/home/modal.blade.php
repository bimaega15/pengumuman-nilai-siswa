@if ($getSiswa)
    <div>
        <div class="modal-header" style="background-image: radial-gradient(#828282, #202020);">
            <h5 class="modal-title" id="modalDetailNilaiLabel" style="color: #d9d9d9;">
                Hasil Nilai Ujian Siswa
            </h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div>
                <h6 class="m-0">Berikut merupakan informasi detail mengenai hasil ujian kamu:</h6>
                <p class="mt-2 text-white font-weight-bold p-2" style="border-radius: 5px; background: #378CE7;">Biodata
                </p>
                <div class="table-responsive">
                    <table class="w-100 mb-0">
                        <tr>
                            <td>
                                <table class="w-100 mb-0">
                                    <tr>
                                        <td class="text-dark" style="width: 30%;">NISN</td>
                                        <td class="text-dark" style="width: 1%;">:</td>
                                        <td class="text-dark">{{ $getSiswa->nisn_siswa }}</td>
                                    </tr>
                                    <tr>
                                        <td class="text-dark" style="width: 30%;">Nama Siswa</td>
                                        <td class="text-dark" style="width: 1%;">:</td>
                                        <td class="text-dark">{{ $getSiswa->nama_siswa }}</td>
                                    </tr>
                                    <tr>
                                        <td class="text-dark" style="width: 30%;">Kelas</td>
                                        <td class="text-dark" style="width: 1%;">:</td>
                                        <td class="text-dark">{{ $getSiswa->kelas->nama_kelas }}</td>
                                    </tr>

                                </table>
                            </td>
                            <td style="vertical-align: top;">
                                <table class="w-100 mb-0">
                                    @if ($getSiswa->jeniskelamin_siswa)
                                        <tr>
                                            <td class="text-dark" style="width: 30%;">Jenis kelamin</td>
                                            <td class="text-dark" style="width: 1%;">:</td>
                                            <td class="text-dark">{{ $getSiswa->jeniskelamin_siswa }}</td>
                                        </tr>
                                    @endif
                                    @if ($getSiswa->email_siswa)
                                        <tr>
                                            <td class="text-dark" style="width: 30%;">Email</td>
                                            <td class="text-dark" style="width: 1%;">:</td>
                                            <td class="text-dark">{{ $getSiswa->email_siswa }}</td>
                                        </tr>
                                    @endif
                                    @if ($getSiswa->alamat_siswa)
                                        <tr>
                                            <td class="text-dark" style="width: 30%;">Alamat</td>
                                            <td class="text-dark" style="width: 1%;">:</td>
                                            <td class="text-dark">{{ $getSiswa->alamat_siswa }}</td>
                                        </tr>
                                    @endif
                                    @if ($getSiswa->namaorangtua_siswa)
                                        <tr>
                                            <td class="text-dark" style="width: 30%;">Orang Tua</td>
                                            <td class="text-dark" style="width: 1%;">:</td>
                                            <td class="text-dark">{{ $getSiswa->namaorangtua_siswa }}</td>
                                        </tr>
                                    @endif
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="mt-3">
                <p class="text-white font-weight-bold p-2" style="border-radius: 5px; background: #378CE7;">Hasil Nilai
                    Ujian</p>
                <span class="text-dark">Klik Link pada kolom hasil ujian untuk melihat rincian nilai kamu.</span>
                <div class="table-responsive">
                    <table class="table mt-1">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Hasil Ujian</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $no = 1;
                            @endphp
                            @foreach ($getSiswa->nilaiSiswa as $item)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>
                                        <a href="{{ $item->nilai_nsiswa }}" class="text-primary font-weight-bold"
                                            target="_blank">
                                            {{ $item->nilai_nsiswa }}
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn--primary shadow"
                style="border-radius: 5px;">OK</button>
        </div>
    </div>
@else
    <div>
        <div class="modal-header" style="background-image: radial-gradient(#828282, #202020);">
            <h5 class="modal-title" id="modalDetailNilaiLabel" style="color: #d9d9d9;">
                Hasil Nilai Ujian Siswa
            </h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="text-center mt-5 mb-5">
                <h5 class="m-1">Data Siswa Tidak Ditemukan</h5> <br>
                <i class="far fa-sad-tear fa-4x text-dark"></i>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" data-dismiss="modal" class="btn btn--primary shadow btn-ok-modal"
                style="border-radius: 5px;">OK</button>
        </div>
    </div>
@endif
