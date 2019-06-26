var docReady = false;

//Jalankan Ambil data ketika web sudah ready
$(document).ready(function () {
    docReady = true;

    requestJenisWisata('.jenis_wisata');
});

function requestJenisWisata(selectorStr){
    $.ajax("http://localhost/TA/itinerary/public/api/jenis_wisata")
        .done(function (data) {
            console.log("success");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.id_jenis_wisata + "'>" + value.nama_jenis + "</option>");

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