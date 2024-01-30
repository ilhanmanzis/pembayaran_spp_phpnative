<?php
session_start();
if(isset($_SESSION['admin'])){
    include 'koneksi.php';
    $awal = $_GET['awal'];
    $akhir = $_GET['akhir'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Pembayaran</title>
    <style>
        body{
            font-family: arial;
        }
        
        table{
                border-collapse:collapse;
            }
    </style>
</head>
<body onload="window.print();">

    <h3>SMK NEGERI ....<b><br>LAPORAN PEMBAYARAN</b></h3>
    <br/>
    <hr/>
    TANGGAL <?=$awal." sampai ".$akhir;?>
    <br/>
    <br>


    <table border="1" cellspacing="" cellpadding="4" width="100%">
        <tr>
            <th>NO</th>
            <th>NISN</th>
            <th>NAMA SISWA</th>
            <th>KELAS</th>
            <th>NO. Bayar</th>
            <th>PEMBAYARAN BULAN</th>
            <th>JUMLAH</th>
            <th>KETERANGAN</th>
        </tr>
        <?php
        $spp = mysqli_query($conn,"SELECT siswa.*,pembayaran.*,kelas.* FROM siswa,pembayaran,kelas WHERE pembayaran.id_siswa = siswa.id_siswa AND kelas.id_kelas = siswa.id_kelas AND tglbayar BETWEEN '$awal' AND '$akhir' ORDER BY nobayar");
        $i=1;
        $total = 0;
        while($dta=mysqli_fetch_assoc($spp)) :
        ?>
        <tr>
            <td align="center"><?= $i ?></td>
            <td align="center"><?= $dta['nisn'] ?></td>
            <td align="center"><?= $dta['nama'] ?></td>
            <td align="center"><?= $dta['nama_kelas'] ?></td>
            <td align=""><?= $dta['nobayar'] ?></td>
            <td align=""><?= $dta['bulan'] ?></td>
            <td align="right"><?= $dta['jumlah'] ?></td>
            <td align="center"><?= $dta['ket'] ?></td>
        </tr>

        <?php $i++; ?>
        <?php
        $total += $dta['jumlah'];
        ?>
        <?php
        endwhile;
        ?>
         <tr>
        <td colspan="7" align="right">TOTAL</td>
        <td align="right"><b><?=$total?></b></td>
        </tr>
        
    </table>

    <table width="100%">
        <tr>
            <td></td>
            <td>
                <br>
                <p>NAMA KOTA <?=date('d/m/y')?></p></br>
                Operator,
                <br/><br/><br/>
                <p>---------------------------------</p>
            </td>
            <td></td>
        </tr>

    </table>

</body>
</html>


<?php
}
else{
    header('location: login.php');
}
?>