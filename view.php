<?php include 'koneksi.php';

if(isset($_POST['id_siswa'])){
    $id_siswa = $_POST['id_siswa'];
    $query = "SELECT siswa.*,angkatan.*,jurusan.*,kelas.* FROM siswa,angkatan,jurusan,kelas WHERE siswa.id_angkatan = angkatan.id_angkatan AND siswa.id_jurusan = jurusan.id_jurusan AND siswa.id_kelas = kelas.id_kelas AND siswa.id_siswa = $id_siswa";
    $exec = mysqli_query($conn,$query);
    $res = mysqli_fetch_assoc($exec);
    ?>
    <form action="editdatasiswa.php" method="post">
        <input type="hidden" name="id_siswa" value="<?=$res['id_siswa'] ?>">
        <input type="hidden" name="nisn" value="<?=$res['nisn'] ?>">
        <input type="text" class="form-control mb-2" name="" disabled="" value="<?=$res['nisn']?>">
        <input type="text" class="form-control mb-2" name="nama" value="<?=$res['nama']?>">
        <select name="id_angkatan" class="form-control mb-2">
                <option selected="">-Pilih Angkatan-</option>
                <?php
                    $exec = mysqli_query($conn,"SELECT * FROM angkatan ORDER BY id_angkatan");
                    while($angkatan = mysqli_fetch_assoc($exec)): 
                        if($res['id_angkatan'] == $angkatan['id_angkatan']){
                            $selected = 'selected';
                        }
                        else{
                            $selected = '';                        
                        }

                        echo "<option  $selected value=".$angkatan['id_angkatan'].">".$angkatan['nama_angkatan']."</option>";
                    endwhile;    
                ?>
        </select>

        <select name="id_kelas" class="form-control mb-2">
                <option selected="">-Pilih Kelas-</option>
                <?php
                    $exec = mysqli_query($conn,"SELECT * FROM kelas ORDER BY id_kelas");
                    while($kelas = mysqli_fetch_assoc($exec)): 
                        if($res['id_kelas'] == $kelas['id_kelas']){
                            $selected = 'selected';
                        }
                        else{
                            $selected = '';                        
                        }
                        echo "<option  $selected value=".$kelas['id_kelas'].">".$kelas['nama_kelas']."</option>";
                    endwhile;    
                ?>
            </select>

            <select name="id_jurusan" class="form-control mb-2">
                <option selected="">-Pilih Jurusan-</option>
                <?php
                    $exec = mysqli_query($conn,"SELECT * FROM jurusan ORDER BY id_jurusan");
                    while($jurusan = mysqli_fetch_assoc($exec)): 
                        if($res['id_jurusan'] == $jurusan['id_jurusan']){
                            $selected = 'selected';
                        }
                        else{
                            $selected = '';                        
                        }
                        echo "<option $selected  value=".$jurusan['id_jurusan'].">".$jurusan['nama_jurusan']."</option>";
                    endwhile;    
                ?>
            </select>
            <textarea name="alamat" class="form-control mb-2" placeholder="Alamat Siswa"><?=$res['alamat']?></textarea>
            <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="Submit" name="edit" class="btn btn-primary">Simpan</button>

    </form>

    <?php } ?>

    <!-- data kelas -->
    <?php

    if(isset($_POST['id_kelas'])){
        $id_kelas = $_POST['id_kelas'];
        $exec = mysqli_query($conn, "SELECT * FROM kelas WHERE id_kelas = '$id_kelas'");
        $res= mysqli_fetch_assoc($exec);

        ?>
        <form action="editdatakelas.php" method="post">
        <input type="hidden" name="id_kelas" value="<?=$res['id_kelas'] ?>" class="form-control mb-2">
        <input type="text" name="nama_kelas" value="<?=$res['nama_kelas']?>" class="form-control mb-2">
        <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="Submit" name="edit" class="btn btn-primary">Simpan</button>

    </form>
        
    <?php } ?>
    <!-- end data kelas -->
    
    <!-- data jurusan -->

    <?php

    if(isset($_POST['id_jurusan'])){
        $id_jurusan = $_POST['id_jurusan'];
        $exec = mysqli_query($conn, "SELECT * FROM jurusan WHERE id_jurusan = '$id_jurusan'");
        $res= mysqli_fetch_assoc($exec);

        ?>
        <form action="editdatajurusan.php" method="post">
        <input type="hidden" name="id_jurusan" value="<?=$res['id_jurusan'] ?>" class="form-control mb-2">
        <input type="text" name="nama_jurusan" value="<?=$res['nama_jurusan']?>" class="form-control mb-2">
        <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="Submit" name="edit" class="btn btn-primary">Simpan</button>

    </form>
        
    <?php } ?>

    <!-- end data jurusan -->



     <!-- data angkatan -->

     <?php

if(isset($_POST['id_angkatan'])){
    $id_angkatan = $_POST['id_angkatan'];
    $exec = mysqli_query($conn, "SELECT * FROM angkatan WHERE id_angkatan = '$id_angkatan'");
    $res= mysqli_fetch_assoc($exec);

    ?>
    <form action="editdataangkatan.php" method="post">
    <input type="hidden" name="id_angkatan" value="<?=$res['id_angkatan'] ?>" class="form-control mb-2">
    <input type="text" name="nama_angkatan" value="<?=$res['nama_angkatan']?>" class="form-control mb-2">
    <input type="text" name="biaya" value="<?=$res['biaya']?>" class="form-control mb-2">
    <div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    <button type="Submit" name="edit" class="btn btn-primary">Simpan</button>

</form>
    
<?php } ?>

<!-- end data angkatan -->
