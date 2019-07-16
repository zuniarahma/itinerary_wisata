var docReady = false;
var lastTime = null;
var finishLast = null;

//Jalankan Ambil data ketika web sudah ready
// $(document).ready(function () {
//     docReady = true;

//     requestWaktu('.rundown_waktu');
//     requestNamaWisata('.rundown_nama_wisata');
// });

function rundown(id) {
    lastTime=null;
    console.log(id);
    console.log("haljajakkk")
    requestWaktu('.rundown_waktu', id);
    requestNamaWisata('.rundown_nama_wisata', id);
    console.log("haloooo")
    requestHistory('.rundown_history', id);
}

function toTimeFormat(timestamp, stayTime, duration) {
    if (timestamp != null) {
        if(lastTime != null){
            let date = lastTime;
            result =  date.getHours() +":" +date.getMinutes();
            date.setMinutes(date.getMinutes() + Number(stayTime) + Number(duration));
            lastTime = date;

            return result;
        }else{
            let date = new Date(timestamp);
            console.log(date);
            result = date.getHours() +":" +date.getMinutes();
            date.setMinutes(date.getMinutes() + Number(stayTime) + Number(duration));
            console.log(date);
            lastTime = date;

            return result;
        }
    }
}

function requestWaktu(selectorStr, id) {
    $.ajax("api/waktu_wisata?id=" + id)
        .done(function (data) {
            console.log("success waktu");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                console.log("ini value", value);
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");

                selector.append("<option value='" + value.id_waktu_wisata + "'>" + "<div>" + toTimeFormat(value.time_start, value.stay_wisata, value.durasi) + "</div>" + " - " + "<div>" + lastTime.getHours()+":"+lastTime.getMinutes() + "</div>" + "</option>");

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

function requestNamaWisata(selectorStr, id) {
    $.ajax("api/waktu_wisata?id=" + id)
        .done(function (data) {
            console.log("success rundown");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");
                selector.append("<option value='" + value.id_waktu_wisata + "'>" +  "Dari " + value.start_wisata + " ke " + value.end_wisata + "</option>");

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

function requestHistory(selectorStr, id) {
    $.ajax("api/tampil_history?id=" + id)
        .done(function (data) {
            console.log("success history");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                
                selector.append("<option>" + "Berangkat pada: " +value.time_start +  " WIB" + "</option>");

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
