<?php
session_start();
if(isset($_SESSION['admin'])){
    header('location: index.php');
}

include 'koneksi.php';
if(isset($_POST['login'])){
    $user = htmlentities(strip_tags($_POST['user']));
    $pass = htmlentities(strip_tags($_POST['pass']));

    $query = "SELECT * FROM admin WHERE user_admin = '$user'";
    $exec = mysqli_query($conn,$query);
    if(mysqli_num_rows($exec) !==0){
        $query = "SELECT * FROM admin WHERE pass_admin = '$pass'";
        $exec = mysqli_query($conn,$query); 
        if(mysqli_num_rows($exec) !==0){
            $res = mysqli_fetch_assoc($exec);
            $_SESSION['admin']= $res['id_admin'];
            $_SESSION['nama_admin']= $res['nama_admin'];
            header('location:index.php');
        }
        else{
            echo "<script>alert('password admin tidak tersedia');
            document.location = 'login.php';
            </script>";
        }

    }
    else{
        echo "<script>alert('User admin tidak tersedia');
        document.location = 'login.php';
        </script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="vendor/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family-Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="css/sb-admin-2.min.css">
</head>
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
                                            Silakan Login
                                        </h1>
                                    </div>
                                    <form action="" method="post" class="user">
                                        <div class="form-group">
                                            <input type="text" name="user" autocomplete="off" required id="exampleInputEmail" class="form-control form-control-user" aria-destribedby="emailHelp" placeholder="Enter Username">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="pass" required autocomplete="off" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block" name="login">
                                            Login
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

    

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="js/sb-admin-2.min.js"></script>
<script>
    $('input').attr('autocomplete','off');
</script>
</body>
</html>