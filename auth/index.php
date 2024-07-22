<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tshop</title>
    <link rel="shortcut icon" href="../assets/images/1.png" type="image/x-icon">
    <link rel="stylesheet" href="../assets/vendor/bootstrap-5.3.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/auth.css">
    <link rel="stylesheet" href="../assets/css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdlmasll7CVkqkXNQ/ZH/XLvWZOJyj7Yy7tcempD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="../assets/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
    <div class="login-register-container">
        <?php require "./components/main.php" ?>
    </div>


    <script src="../assets/vendor/jquery-3.7.1.js"></script>
    <script src="../assets/vendor/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
    <script src="../assets/vendor/sweetalert2@11.js"></script>

    <?php if (isset($_GET['msg'])) {
    switch ($_GET['msg']) {
      case 'success':
        echo "<script>
                    const Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 2000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                        toast.onmouseenter = Swal.stopTimer;
                        toast.onmouseleave = Swal.resumeTimer;
                        }
                    });
                    Toast.fire({
                        icon: 'success',
                        title: 'Đăng ký thành công!'
                    });
                </script>";
        break;

      case 'error':
        echo "<script>
                        const Toast = Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 2000,
                            timerProgressBar: true,
                            didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                            }
                        });
                        Toast.fire({
                            icon: 'error',
                            title: 'Đăng ký không thành công! Tài khoản đã tồn tại'
                        });
                    </script>";
        break;

      case 'warning':
        echo "<script>
                        const Toast = Swal.mixin({
                            toast: true,
                            position: 'top-end',
                            showConfirmButton: false,
                            timer: 2000,
                            timerProgressBar: true,
                            didOpen: (toast) => {
                            toast.onmouseenter = Swal.stopTimer;
                            toast.onmouseleave = Swal.resumeTimer;
                            }
                        });
                        Toast.fire({
                            icon: 'warning',
                            title: 'Thông tin đăng nhập không chính xác hoặc tài khoản bị khóa!'
                        });
                    </script>";
        break;
    }
  } ?>
</body>

</html>