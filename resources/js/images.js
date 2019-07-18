var docReady = false;

//Jalankan Ambil data ketika web sudah ready
$(document).ready(function () {
    docReady = true;

    requestImages('.tampil_images');
});

function requestImages(selectorStr) {
    $.ajax("api/images")
        .done(function (data) {
            console.log("success images");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('img').remove();
            $.each(data, function (key, value) {
                console.log("ini value", value);
                selector.append("<div class='col-xs-6 col-sm-6 col-md-6 col-lg-6'>" + "<img src='http://localhost/TA/itinerary/public/data_file/" + value.file +"' ) }}' />" + "</div>");
                // src="{{ url('/data_file/'.$g->file) }}"
                console.log("value.file", value.file);
            });
        })
        .fail(function () {
            console.log("error");
        })
        .always(function () {
            console.log("complete");
        });
}