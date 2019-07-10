var docReady = false;

//Jalankan Ambil data ketika web sudah ready
// $(document).ready(function () {
//     docReady = true;

//     requestWaktu('.rundown_waktu');
//     requestNamaWisata('.rundown_nama_wisata');
// });

function rundown(id){
    console.log(id);
    requestWaktu('.rundown_waktu', id);
    requestNamaWisata('.rundown_nama_wisata', id);
}

function toStringtime(waktu){
    var result = "";
    if (waktu % 60 < 0 && waktu != null){
        result = waktu + " menit";
    } else if (waktu % 60 > 0 && waktu != null ) {
        var hour = waktu % 60;
        var minutes = waktu - (hour * 60);
        result = hour + " jam " + minutes + " menit";
    } else {
        result
    }
    return result;
}

function requestWaktu(selectorStr, id){
    $.ajax("api/waktu_wisata?id=" + id)
        .done(function (data) {
            console.log("success rundown");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                
                selector.append("<option value='" + value.id_waktu_wisata + "'>" + toStringtime(value.durasi) + "<br>" + toStringtime(value.stay_wisata) + "</option>");
                
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

function requestNamaWisata(selectorStr, id){
    $.ajax("api/waktu_wisata?id=" + id)
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
}
        });