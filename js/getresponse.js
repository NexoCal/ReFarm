function getresponse(){

    var tgl = document.getElementById('latest-tanggal').innerText
    var tinggi = document.getElementById('latest-tinggi').innerText
    var daun = document.getElementById('latest-daun').innerText
    var batang = document.getElementById('latest-batang').innerText
    var lembab = document.getElementById('latest-lembab').innerText
    var frek = document.getElementById('latest-freq').innerText
    var keterangan = document.getElementById('latest-keterangan').innerText
    var nama= document.getElementById('namatanam').value
    

    var response = document.getElementById('output')
    var restyle = window.getComputedStyle(response)

    
    //alert("Plant Name: Tomat\n" + "Plant Height: "+tinggi+"\n" + "Plant Leaves Condition: "+daun+"\n"+"Plant Trunk Condition: "+batang+"\n"+"Plant Humidity: "+lembab+"\n"+"Plant Watering Frequncy: "+frek+"\n"+"using the data given to you, give me a suggestion on what should i do to make my plantflourish and estimate how many days left before harvest, response using this format\n\n<This is where you give a short explanation about the current state of the plant>\n<This is where you put the estimated time before harvest, use format 'estimated day before harvest : 10 - 20 days'. just use that format and dont add anyword>\n<this is where you put suggestion on what should i do to take care of the plant and make it flourish>")
    var request = new XMLHttpRequest();

    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            var text = request.responseText;

            var i = 0;

            var interval = setInterval(function(){
                if(i < text.length){
                    if(restyle.getPropertyValue("display") == "none"){
                        response.style.display = "flex";
                    }
                    response.value = response.value + text.charAt(i);
                    i++;
                }else{
                    clearInterval(interval)
                }
            },20)
        }
    }

    request.open("GET", "gptresponse.php?tinggi=" + tinggi + "&daun=" + daun + "&batang=" + batang + "&lembab=" + lembab + "&freq=" + frek + "&nama=" + nama, true)
    request.send();

}