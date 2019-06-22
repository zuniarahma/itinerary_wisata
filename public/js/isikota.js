var docReady = false;

//Jalankan Ambil data ketika web sudah ready
$(document).ready(function () {
    docReady = true;

    requestKota('.kota');
});

function requestKota(selectorStr){
    $.ajax("api/kota")
        .done(function (data) {
            console.log("success");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.id_kota + "'>" + value.nama_kota + "</option>");

                // console.log('key', key);
                // console.log('value', value.nama_kota);
            });
        })
        .fail(function () {
            console.log("error");
        })
        .always(function () {
            console.log("complete");
        });
}