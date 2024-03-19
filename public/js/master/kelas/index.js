// "use strict";
var datatable;
let url_datastatis = $(".url_datastatis").data("url");
var url_parent_id;
var url_parent_name;

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
                    data: "nama_kelas",
                    name: "nama_kelas",
                    searchable: true,
                },
                {
                    data: "tingkat_kelas",
                    name: "tingkat_kelas",
                    searchable: true,
                },
                {
                    data: "kapasitas_kelas",
                    name: "kapasitas_kelas",
                    searchable: true,
                },
                {
                    data: "tajaran_kelas",
                    name: "tajaran_kelas",
                    searchable: false,
                },
                {
                    data: "wali_kelas",
                    name: "wali_kelas",
                    searchable: false,
                },
                { data: "action", orderable: false, searchable: false },
            ]
        );
    }
    initDatatable();

    var body = $("body");
    // handle btn add data
    body.on("click", ".btn-add", function () {
        showModalFormMedium($(this).data("url"), {}, "Tambah Data", "get");
    });

    // handle btn edit
    body.on("click", ".btn-edit", function (e) {
        e.preventDefault();

        showModalFormMedium(
            $(this).attr("href"),
            { id: $(this).data("id") },
            "Ubah Data",
            "get"
        );
    });

    // handle btn delete
    function handleDelete(element) {
        basicDeleteConfirmDatatable($(element).data("url"));
    }

    body.on("click", ".btn-delete", function (e) {
        e.preventDefault();
        handleDelete(this);
    });
});
