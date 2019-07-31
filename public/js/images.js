var docReady = false;

//Jalankan Ambil data ketika web sudah ready
$(document).ready(function () {
    docReady = true;

    requestNamaWisata('.nama_wisata');
});

function detail_wisata(){
    requestDetailWisata('.detail_wisata');
}

function requestNamaWisata(selectorStr) {
    $.ajax("api/joinwisata")
        .done(function (data) {
            console.log("success nama wisata");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('div').remove();
            $.each(data, function (key, value) {
                console.log("ini value nama_wisata", value);
                selector.append("<div class='col-xs-6 col-sm-6 col-md-6 col-lg-6'>" + "<img src='data_file/" + value.file +"' /><a href='detail_wisata/" + value.id_wisata +"' >"+ value.nama_wisata + "</a></div>");
                // src="{{ url('/data_file/'.$g->file) }}"
                console.log("value.nama_wisata", value.nama_wisata);
            });
        })
        .fail(function () {
            console.log("error");
        })
        .always(function () {
            console.log("complete");
        });
}

function requestDetailWisata(selectorStr) {
    $.ajax("api/joinwisata")
        .done(function (data) {
            console.log("success nama wisata");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('div').remove();
            $.each(data, function (key, value) {
                console.log("ini value nama_wisata", value);
                selector.append("<div class='col-xs-6 col-sm-6 col-md-6 col-lg-6'>" + "<img src='http://localhost/TA/itinerary/public/data_file/" + value.file +"' ) }}' />" + value.nama_wisata + "</div>");
                // src="{{ url('/data_file/'.$g->file) }}"
                console.log("value.nama_wisata", value.nama_wisata);
            });
        })
        .fail(function () {
            console.log("error");
        })
        .always(function () {
            console.log("complete");
        });
}

