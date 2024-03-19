// "use strict";
var dataTable;
var body = $("body");

$(document).ready(function () {
    function initDatatable() {
        datatable = basicDatatable(
            $("#dataTable"),
            $(".url_datatable").data("url"),
            [
                {
                    data: null,
                    orderable: false,
                    searchable: false,
                    className: "text-center",
                },
                {
                    data: "nama_siswa",
                    name: "nama_siswa",
                    searchable: true,
                },
                {
                    data: "nisn_siswa",
                    name: "nisn_siswa",
                    searchable: true,
                },
                {
                    data: "jeniskelamin_siswa",
                    name: "jeniskelamin_siswa",
                    searchable: true,
                },
                {
                    data: "notelpon_siswa",
                    name: "notelpon_siswa",
                    searchable: false,
                },
                {
                    data: "kelas",
                    name: "kelas",
                    searchable: false,
                },
                { data: "action", orderable: false, searchable: false },
            ]
        );
    }
    initDatatable();
});
