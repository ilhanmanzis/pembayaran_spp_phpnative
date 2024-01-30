<?php
session_start();
if(isset($_SESSION['admin'])){
    include 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slip Pembayaran SPP</title>
    <style>
        body{
            font-family: arial;
        }
        /* .print{
            margin-top: 10px;
        }
        @media print {
            .print{
                display: none;
            }
        } */
        table{
                border-collapse:collapse;
            }
    </style>
</head>
<body onload="window.print();">

    <h3>SMK NEGERI ....<b><br>LAPORAN PEMBAYARAN</b></h3>
    <br/>
    <hr/>
    <?php
    $nisn = $_GET['nisn'];
    $siswa = mysqli_query($conn,"SELECT siswa.*,angkatan.*,jurusan.*,kelas.* FROM siswa,angkatan,jurusan,kelas WHERE siswa.id_angkatan = angkatan.id_angkatan AND siswa.id_jurusan = jurusan.id_jurusan AND siswa.id_kelas = kelas.id_kelas AND siswa.nisn = '$nisn'");
    $sw=mysqli_fetch_assoc($siswa);
    $idspp = $_GET['id'];
    ?>
    <table>
        <tr>
            <td>Nama Siswa</td>
            <td>:</td>
            <td><?=$sw['nama']?></td>
        </tr>
        <tr>
            <td>NISN</td>
            <td>:</td>
            <td><?=$sw['nisn']?></td>
        </tr>
        <tr>
            <td>Kelas</td>
            <td>:</td>
            <td><?=$sw['nama_kelas']?></td>
        </tr>
        <tr>
            <td>Angkatan</td>
            <td>:</td>
            <td><?=$sw['nama_angkatan']?></td>
        </tr>
        <tr>
            <td>Jurusan</td>
            <td>:</td>
            <td><?=$sw['nama_jurusan']?></td>
        </tr>
    </table>
    <table border="1" cellspacing="" cellpadding="4" width="100%">
        <tr>
            <th>NO</th>
            <th>NO. Bayar</th>
            <th>PEMBAYARAN BULAN</th>
            <th>JUMLAH</th>
            <th>KETERANGAN</th>
        </tr>
        <?php
        $spp = mysqli_query($conn,"SELECT siswa.*,pembayaran.* FROM siswa,pembayaran WHERE pembayaran.id_siswa = siswa.id_siswa AND pembayaran.idspp = '$idspp' ORDER BY nobayar ASC");
        $i=1;
        $total = 0;
        while($dta=mysqli_fetch_assoc($spp)) :
        ?>
        <tr>
            <td align="center"><?= $i ?></td>
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