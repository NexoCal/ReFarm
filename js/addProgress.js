function addProgress() {

  var tinggi = document.getElementById("tinggi-tanaman");
  var kondaun = document.getElementById("kondisi-daun");
  var konbatang = document.getElementById("kondisi-batang");
  var lembab = document.getElementById("kelembapan-tanah");
  var frek = document.getElementById("frekuensi-siram");
  var pengamat = document.getElementById("pengamatan-anda");

  var haha = "yeyeye";

  var newdata = {
    'tinggi': tinggi.value,
    'kondisiDaun': kondaun.value,
    'kondisiBatang': konbatang.value,
    'kelembaba': lembab.value,
    'frekuensi': frek.value,
    'keterangan': pengamat.value
  };

  $.ajax(
    {
        url:'addProgress.php',
        type: 'POST',
        datatype: 'json',
        data: {'data':newdata},   // post to location.php
        success: function(label) {
        // success
     },

     error: function(label) {
         alert("There may an error on uploading. Try again later");
     }

 });
}
