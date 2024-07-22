<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title id="dynamicTitle">Tshop</title>
    <link rel="shortcut icon" href="../assets/images/1.png" type="image/x-icon">
    <link rel="stylesheet" href="../assets/vendor/bootstrap-5.3.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/header.css">
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../assets/vendor/boxicons-2.1.4/css/boxicons.min.css">
    <link rel="stylesheet" href="../assets/vendor/datatables/css/1_dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="../assets/vendor/datatables/css/2_buttons.bootstrap5.min.css">
    <link rel="stylesheet" href="../assets/css/main.css">
    <link rel="stylesheet" href="../assets/css/footer.css">
    <link rel="stylesheet" href="../assets/css/css.css">

</head>

<body>
    <script src="../assets/vendor/jquery-3.7.1.js"></script>
    


    <?php require_once 'components/header.php' ?>
    <?php require_once 'components/main.php' ?>
    <?php require_once 'components/footer.php' ?>


    <script src="../assets/vendor/owl.carousel.min.js"></script>
    <script src="../assets/vendor/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
    <script src="../assets/vendor/bootstrap-5.3.3-dist/js/bootstrap.bundle.js"></script>
    <script src="../assets/vendor/bootstrap-5.3.3-dist/js/popper.min.js"></script>
    <script src="../assets/vendor/sweetalert2@11.js"></script>
    <script src="../assets/vendor/datatables/js/1_jquery.dataTables.min.js"></script>
    <script src="../assets/vendor/datatables/js/2_dataTables.bootstrap5.min.js"></script>
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/header.js"></script>




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