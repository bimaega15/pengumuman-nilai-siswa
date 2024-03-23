// "use strict";
var datatable;
let url_datatable = $(".url_datatable").data("url");

var modal_import = "modal_import";

var modal_import_js = tailwind.Modal.getOrCreateInstance(
    document.querySelector(`#${modal_import}`)
);

var valueCheckBox = [];

$(document).ready(function () {
    function initDatatable() {
        datatable = basicDatatable(
            $("#dataTable"),
            url_datatable,
            [
                {
                    data: null,
                    orderable: false,
                    searchable: false,
                    className: "text-center",
                },
                {
                    data: "delete_all",
                    name: "delete_all",
                    orderable: false,
                    searchable: false,
                    render: function (data, type, row) {
                        const checkValueBox = valueCheckBox.findIndex(
                            (item) => item == row.id
                        );

                        let output = data;
                        if (checkValueBox !== -1) {
                            output = `
                            <div class="form-check mt-2">
                                <input id="checkbox_item${row.id}" class="form-check-input checkbox_item" type="checkbox" value="${row.id}" style="border: 1px solid black;" checked>
                                <label class="form-check-label" for="checkbox_item${row.id}"></label>
                            </div>
                            `;
                        }
                        return output;
                    },
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
            ],
            {}
        );
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
                notifAlert("Successfully", data, "success");
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

    body.on("click", "#checkbox_all", function (e) {
        let checkBoxAll = false;
        if ($(this).is(":checked")) {
            checkBoxAll = true;
            $(".checkbox_item").prop("checked", true);
        } else {
            checkBoxAll = false;
            $(".checkbox_item").prop("checked", false);
        }

        const checkItem = $(".checkbox_item");
        $.each(checkItem, function (i, v) {
            const value = $(this).val();
            if (checkBoxAll) {
                valueCheckBox.push(value);
            } else {
                const findIndex = valueCheckBox.findIndex(
                    (item) => item == value
                );
                if (findIndex !== -1) {
                    valueCheckBox.splice(findIndex, 1);
                }
            }
        });

        valueCheckBox = new Set(valueCheckBox);
        valueCheckBox = [...valueCheckBox];

        datatable.ajax.reload();
    });

    body.on("click", ".checkbox_item", function () {
        const length = $(".checkbox_item").length;
        const lengthChecked = $(".checkbox_item:checked").length;
        if (length == lengthChecked) {
            $("#checkbox_all").prop("checked", true);
        } else {
            $("#checkbox_all").prop("checked", false);
        }

        const value = $(this).val();
        if ($(this).is(":checked")) {
            valueCheckBox.push(value);
        } else {
            const findIndex = valueCheckBox.findIndex((item) => item == value);
            if (findIndex !== -1) {
                valueCheckBox.splice(findIndex, 1);
            }
        }

        valueCheckBox = new Set(valueCheckBox);
        valueCheckBox = [...valueCheckBox];

        datatable.ajax.reload();
    });

    body.on("click", ".btn-delete-all", function (e) {
        e.preventDefault();
        const url = $(".url_deleteall_siswa").data("url");
        if (valueCheckBox.length == 0) {
            return notifAlert(
                "Info!",
                "Pastikan kamu memilih data yang di checked",
                "info"
            );
        }
        basicDeleteConfirmDatatable(
            url,
            {
                siswa_id: JSON.stringify(valueCheckBox),
            },
            "Apakah anda yakin ingin menghapus semua item ini ? "
        );
    });
});
