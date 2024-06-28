<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Re:Farm - Teknik Irigasi dan Pengelolaan Air</title>
    <link rel="stylesheet" href="./css/kelas2.css">
    <link rel="icon" href="./images/Logo ReFarm.png" type="image/png">
    <script>
        const modulContent = {};

        function loadContent(contentId) {
            const content = document.getElementById('content');
            const modul = modulContent[contentId];
            content.innerHTML = `<h1>${modul.nama}</h1>` + modul.isi;
        }

        document.addEventListener('DOMContentLoaded', function() {
            loadContent('modul1');
        });
    </script>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <div class="logo">
                <img src="./images/logo.png" alt="Re:Farm Logo">
            </div>
            <div class="menu">
                <?php
                include './php/fungsi_kelas_2.php';
                foreach ($modul_data as $index => $modul) {
                    $modul_id = 'modul' . ($index + 1);
                    $bab_number = $index + 1;
                    echo "<div class='menu-item' onclick=\"loadContent('$modul_id')\">BAB $bab_number: " . htmlspecialchars($modul['nama_modul']) . "</div>";
                    echo "<script>
                        modulContent['$modul_id'] = {
                            nama: `" . addslashes($modul['nama_modul']) . "`,
                            isi: `" . addslashes($modul['isi_modul']) . "`
                        };
                    </script>";
                }
                ?>
            </div>
            <button class="back-button" onclick="javascript:history.back()">Kembali</button>
        </div>
        <div id="content" class="content"></div>
    </div>
</body>
</html>
