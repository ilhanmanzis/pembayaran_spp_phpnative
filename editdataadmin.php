<?php include 'koneksi.php';
include 'header.php';
if(isset($_GET['id_admin'])){
    $id_admin = $_GET['id_admin'];
    $query = "SELECT * FROM admin WHERE id_admin = '$id_admin'";
    $exec = mysqli_query($conn,$query);
    $res = mysqli_fetch_assoc($exec);
}

if(isset($_POST['simpan'])){
    $id_admin = $_POST['id_admin'];
    $nama_admin = htmlentities(strip_tags($_POST['nama_admin']));
    $user_admin = htmlentities(strip_tags($_POST['user_admin']));
    $pass_admin = htmlentities(strip_tags($_POST['pass_admin']));

    $query = "UPDATE admin SET nama_admin = '$nama_admin', user_admin = '$user_admin', pass_admin = '$pass_admin' WHERE id_admin = '$id_admin'";
    $exec = mysqli_query($conn,$query);
    if($exec){
        echo "<script>alert('data admin berhasil diubah');
        document.location = 'index.php';
        </script>";
    }
    else{
        echo "<script>alert('data admin gagal diubah');
        document.location = 'index.php';
        </script>";
    }
}
?>

<body class="bg-gradient-primary"> 
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-done d-lg-black bg-color-white">
                                <img width="100%" height="100%"src="img/login.svg" alt="">
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">
                                            Edit Data Admin
                                        </h1>
                                    </div>
                                    <form action="" method="post" class="user">
                                    <div class="form-group">
                                        <input type="hidden" name="id_admin" value="<?=$res['id_admin']?>">
                                            <input type="text" name="nama_admin" autocomplete="off" required id="exampleInputEmail" class="form-control form-control-user" aria-destribedby="emailHelp" placeholder="Enter Nama..." value="<?=$res['nama_admin']?>">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="user_admin" autocomplete="off" required id="exampleInputEmail" class="form-control form-control-user" aria-destribedby="emailHelp" placeholder="Enter Username..." value="<?=$res['user_admin']?>">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="pass_admin" required autocomplete="off" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" value="<?=$res['pass_admin']?>">
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block" name="simpan">
                                            Simpan
                                        </button>
                                    </form>

                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>



<?php include 'footer.php'; ?>