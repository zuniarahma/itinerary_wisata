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
    requestWaktu('.rundown_waktu', id);
    requestNamaWisata('.rundown_nama_wisata', id);
}

function toStringtime(waktu) {
    var result;
    if (waktu < 60 && waktu != null) {
        result = waktu + " menit";
    } else if (waktu > 60 && waktu != null) {
        var hour = waktu % 60;
        var minutes = waktu - (hour * 60);
        result = hour + " jam " + minutes + " menit";
    }

    return result;
}



function toTimeFormat(timestamp, stayTime, duration) {
    if (timestamp != null) {
        if(lastTime != null){
            let date = lastTime;
            result =  date.getHours() +":" +date.getMinutes();
            date.setMinutes(date.getMinutes() + stayTime + duration);
            lastTime = date;

            return result;
        }else{
            let date = new Date(timestamp);
            result = date.getHours() +":" +date.getMinutes();
            date.setMinutes(date.getMinutes() + stayTime + duration);
            lastTime = date;

            return result;
        }
    }
}


function requestWaktu(selectorStr, id) {
    $.ajax("api/waktu_wisata?id=" + id)
        .done(function (data) {
            console.log("success rundown");
            console.log(data);
            var selector = $(selectorStr);
            selector.find('option').remove();
            $.each(data, function (key, value) {
                //selector.append("<option value='" + value.nama_wisata + "'>" + value.nama_wisata + "</option>");

                selector.append("<option value='" + value.id_waktu_wisata + "'>" + toTimeFormat(value.time_start, value.stay_wisata, value.total_perjalanan) + " - "+lastTime.getHours()+":"+lastTime.getMinutes()+"</option>");

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
