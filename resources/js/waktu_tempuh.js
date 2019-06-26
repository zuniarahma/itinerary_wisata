var docReady = false;

//Jalankan Ambil data ketika web sudah ready
$(document).ready(function () {
    docReady = true;

    requestWaktu('.rundown_waktu');
    requestNamaWisata('.rundown_nama_wisata');
});

function requestWaktu(selectorStr){
    $.ajax("api/waktu_wisata")
        .done(function (data) {
            console.log("success rundown");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.id_waktu_wisata + "'>" + value.durasi + "-" + value.stay_wisata + "</option>");
                
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

function requestNamaWisata(selectorStr){
    $.ajax("api/waktu_wisata")
        .done(function (data) {
            console.log("success rundown");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.id_waktu_wisata + "'>" + value.start_wisata + "-" + value.end_wisata + "</option>");
                
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