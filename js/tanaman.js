document.addEventListener("DOMContentLoaded", function () {
    const btnAdd = document.getElementById("btn-add");
    const btnSave = document.getElementById("btn-save");
    const btnCancel = document.getElementById("btn-cancel");
    const formContainer = document.getElementById("form-container");

    btnAdd.addEventListener("click", function () {
        formContainer.style.display = "block";
        btnAdd.style.display = "none";
        btnSave.style.display = "block";
        btnCancel.style.display = "block";
    });

    btnCancel.addEventListener("click", function () {
        formContainer.style.display = "none";
        btnAdd.style.display = "block";
        btnSave.style.display = "none";
        btnCancel.style.display = "none";
    });

    const gambarTanamanInput = document.getElementById("gambar-tanaman");
    const gambarPreview = document.getElementById("gambar-preview");

    gambarTanamanInput.addEventListener("change", function (event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                gambarPreview.src = e.target.result;
                gambarPreview.style.display = "block";
            };
            reader.readAsDataURL(file);
        } else {
            gambarPreview.style.display = "none";
        }
    });

    btnSave.addEventListener("click", function () {
        const tanggal = document.getElementById("tanggal").value;
        const tinggiTanaman = document.getElementById("tinggi-tanaman").value;
        const kondisiDaun = document.getElementById("kondisi-daun").value;
        const kondisiBatang = document.getElementById("kondisi-batang").value;
        const kelembapanTanah = document.getElementById("kelembapan-tanah").value;
        const frekuensiSiram = document.getElementById("frekuensi").value;
        const gambarSrc = gambarPreview.src;

        if (
            tanggal &&
            tinggiTanaman &&
            kondisiDaun &&
            kondisiBatang &&
            kelembapanTanah &&
            frekuensiSiram &&
            gambarSrc
        ) {
            const newRow = `
                <tr>
                    <td>${tanggal}</td>
                    <td>${tinggiTanaman}</td>
                    <td>${kondisiDaun}</td>
                    <td>${kondisiBatang}</td>
                    <td>${kelembapanTanah}</td>
                    <td>${frekuensiSiram}</td>
                    <td>Normal</td>
                </tr>
            `;
            document.getElementById("table-body").insertAdjacentHTML("beforeend", newRow);

            document.getElementById("tanggal").value = "";
            document.getElementById("tinggi-tanaman").value = "";
            document.getElementById("kondisi-daun").value = "";
            document.getElementById("kondisi-batang").value = "";
            document.getElementById("kelembapan-tanah").value = "";
            document.getElementById("frekuensi-siram").value = "";
            document.getElementById("keterangan-kondisi").value = "";
            gambarTanamanInput.value = "";
            gambarPreview.src = "";
            gambarPreview.style.display = "none";

            formContainer.style.display = "none";
            btnAdd.style.display = "block";
            btnSave.style.display = "none";
            btnCancel.style.display = "none";
        } else {
            alert("Semua kolom harus diisi!");
        }
    });
});
