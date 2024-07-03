function loadIMG() {
  let files = document.querySelector("[type=file]").files;
  let btnload = document.getElementById("btn-load")
  var restyle = window.getComputedStyle(btnload)

  const formData = new FormData();

  for (let i = 0; i < files.length; i++) {
    let file = files[i];

    formData.append("files[]", file);
  }

  fetch("loadimage.php", {
    method: "POST",
    body: formData,
  }).then((response) => {
    console.log(response);
    btnload.innerHTML = "Loaded"
    setTimeout(function(){
      btnload.innerHTML = "Load Image"

    },3000)
  });

}

function getResponseIMG(){

  var response = document.getElementById("output");
  var restyle = window.getComputedStyle(response);
  response.value = ""
  var request = new XMLHttpRequest();

  request.onreadystatechange = function () {
    if (request.readyState == 4 && request.status == 200) {
      var text = request.responseText;

      var i = 0;

      var interval = setInterval(function () {
        
        if (i < text.length) {
          if (restyle.getPropertyValue("display") == "none") {
            response.style.display = "flex";
          }
          response.value = response.value + text.charAt(i);
          i++;
        } else {
          clearInterval(interval);
        }
      }, 20);
    }
  };

  request.open("GET", "gptresponseimage.php", true);
  request.send();
}
