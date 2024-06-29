function getresponse(){

    var tgl = document.getElementById('tanggal')
    var tinggi = document.getElementById('tinggi-tanaman')
    var daun = document.getElementById('kondisi-daun')
    var batang = document.getElementById('kondisi-batang')
    var lembab = document.getElementById('kelembapan-tanah')
    var frek = document.getElementById('frekuensi-siram')
    var keterangan = document.getElementById('keterangan-kondisi')

    var response = document.getElementById('output')

    var prompt = 'give a suggestion on what to farm'

    var request = new XMLHttpRequest();

    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            alert(request.responseText)
        }
    }

    request.open("GET", "gptresponse.php?prompt=" + prompt, true)
    request.send();

}