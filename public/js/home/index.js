var body = $("body");
var url_home = $(".url_home").data("value");
var disabled = "Loading...";
var enable = "CARI NISN <i class='icon-right-arrow'></i>";

$(document).ready(function () {
    body.on("click", ".btn-search-nisn", function (e) {
        e.preventDefault();

        const nisn_siswa = $('input[name="nisn_siswa"]').val();
        if (nisn_siswa === "") {
            return Toastify({
                text: `
                <strong class="text-white">Fail!</strong> <br />
                <span>Nomor NISN Siswa wajib diisi</span>
                `,
                duration: 3000,
                newWindow: true,
                close: true,
                gravity: "bottom",
                position: "left",
                stopOnFocus: true,
                escapeMarkup: false,
                style: {
                    background: "#FF204E",
                },
                onClick: function () {},
            }).showToast();
        }

        $.ajax({
            url: url_home,
            dataType: "text",
            type: "get",
            beforeSend: function () {
                $(".btn-search-nisn").html(disabled);
                $(".btn-search-nisn").attr("disabled", true);
            },
            data: {
                nisn_siswa,
            },
            success: function (data) {
                $("#modalDetailNilai").modal("show");
                $("#modal-body-content").html(data);
            },
            complete: function () {
                $(".btn-search-nisn").html(enable);
                $(".btn-search-nisn").attr("disabled", false);
            },
        });
    });
});
