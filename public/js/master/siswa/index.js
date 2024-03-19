// "use strict";
var datatable;
let url_datatable = $(".url_datatable").data("url");

var modal_import = "modal_import";

var modal_import_js = tailwind.Modal.getOrCreateInstance(
    document.querySelector(`#${modal_import}`)
);

$(document).ready(function () {
    function initDatatable() {
        datatable = basicDatatable($("#dataTable"), url_datatable, [
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
        ]);
    }
    initDatatable();

    var body = $("body");
    // handle btn add data
    body.on("click", ".btn-add", function () {
        showModalFormLarge($(this).data("url"), {}, "Tambah Data", "get");
    });

    // handle btn edit
    body.on("click", ".btn-edit", function (e) {
        e.preventDefault();

        showModalFormLarge(
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

    body.on("click", ".btn-submit-import", function (e) {
        e.preventDefault();
        $("#form-submit-import").submit();
    });

    body.on("click", ".btn-import", function (e) {
        e.preventDefault();
        modal_import_js.show();
    });

    body.on("submit", "#form-submit-import", function (e) {
        e.preventDefault();
        var form = $("#form-submit-import");
        var submitButton = $(".btn-submit-import");

        var formData = $(form)[0];
        var data = new FormData(formData);
        var action = $(form).attr("action");

        $.ajax({
            type: "post",
            url: action,
            data: data,
            dataType: "json",
            enctype: "multipart/form-data",
            processData: false, // Important!
            contentType: false,
            cache: false,
            beforeSend: function () {
                submitButton.disabled = true;
                submitButton.innerHTML = disableButton;
            },
            success: function (data) {
                notifAlert("Successfully", data.message, "success");
                datatable.ajax.reload();
                modal_import_js.hide();
            },
            error: function (jqXHR, exception) {
                // Enable button
                submitButton.disabled = false;
                ajaxErrorMessage(jqXHR, exception);
            },
            complete: function () {
                submitButton.disabled = false;
                submitButton.innerHTML = enableButton;
            },
        });
    });
});
