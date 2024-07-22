<?php
session_start();
require_once '../../model/KhachHangModel.php';
require_once '../../model/NhanVienModel.php';
require_once '../../model/CommonModel.php';
$kh = new KhachHangModel();
$nhanVien = new NhanVienModel();
$cm = new CommonModel();

if (isset($_GET['req'])) {
    switch ($_GET['req']) {
        case "dang-nhap":
            echo $email = $_POST['emailUsername'];
            echo $password = $_POST['password'];
            $res = $kh->KhachHang__Dang_Nhap($email, $password);
            if ($res == false) {
                header('location: ../index.php?pages=dang-nhap&msg=warning');
            } else {
                $_SESSION['user'] = $res;
                header('location: ../../user/index.php?msg=success');
            }
            break;


        case "dang-ky":
            $res = 0;
            echo $tenkh = $_POST['tenkh'];
            echo $email = $_POST['email'];
            echo $password = $_POST['password'];
            $trangthai = 1;
            if ($kh->KhachHang__Check_Email($email)) {
                $res += $kh->KhachHang__Dangky($tenkh, $email, $password, $trangthai);
            }

            if ($res != false) {
                header('location: ../index.php?pages=dang-nhap&msg=success');
            } else {
                header('location: ../index.php?pages=dang-ky&msg=error');
            }
            break;


        case "dang-nhap-admin":
            $email = $_POST['email'];
            // $password = $cm->MaHoaMatKhau(trim($_POST['password']));
            $password = (trim($_POST['password']));
            $res = $nhanVien->NhanVien__Dang_Nhap($email, $password);
            if ($res == false) {
                header('location: ../index.php?pages=dang-nhap-admin&msg=warning');
            } else {
                if ($res->phanquyen == 0) {
                    $_SESSION['admin'] = $res;
                    header('location: ../../admin/');
                } elseif ($res->phanquyen == 1) {
                    $_SESSION['manager'] = $res;
                    header('location: ../../admin/');
                } elseif ($res->phanquyen == 2) {
                    $_SESSION['nhanvien'] = $res;
                    header('location: ../../admin/');
                }
            }
            break;

        case "chinh-sua":
            $res = 0;
            $makh = $_POST['makh'];
            $tenkh = $_POST['tenkh'];
            $gioitinh = $_POST['gioitinh'];
            $ngaysinh = $_POST['ngaysinh'];
            $sodienthoai = $_POST['sodienthoai'];
            $diachi = $_POST['diachi'];
            $trangthai = 1;
            $email = $_POST['email'];

            $password_old = $_POST['password_old'];
            $password_new = $_POST['password_new'];

            $password = $password_old;

            if ($password_new != $password_old && strlen($password_new) > 0) {
                $password = $password_new;
            }
            echo $res += $kh->KhachHang__Update($makh, $tenkh, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai);
            if ($res != 0) {
                header('location: ../index.php?pages=dang-nhap&msg=update-success');
            } else {
                header('location: ../index.php?pages=dang-nhap&msg=update-error');
            }
            break;

        case "dang-xuat-admin":
            if (isset($_SESSION['manager'])) {
                unset($_SESSION['manager']);
            }
            if (isset($_SESSION['admin'])) {
                unset($_SESSION['admin']);
            }
            if (isset($_SESSION['nhanvien'])) {
                unset($_SESSION['nhanvien']);
            }
            header('location:' . $_SERVER["HTTP_REFERER"]);
            break;
        case "dang-xuat-user":
            if (isset($_SESSION['user'])) {
                unset($_SESSION['user']);
            }
            header('location:' . $_SERVER["HTTP_REFERER"]);
            break;
        default:
            break;
    }
}
