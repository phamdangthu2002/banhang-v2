<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');
require "../model/KhachHangModel.php";
require "../model/NhanVienModel.php";
$kh = new KhachHangModel();
$nv = new NhanVienModel();
$username = isset($_POST["username"]) ? $_POST["username"] : "";
$password = isset($_POST["password"]) ? $_POST["password"] : "";
$result_kh = $kh->KhachHang__Dang_Nhap($username, $password);
$result_nv = $nv->NhanVien__Dang_Nhap($username, $password);

if ($result_kh) {
    $data = [
        "id" => $result_kh->id,
        "displayname" => $result_kh->username,
        "username" => $result_kh->password,
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
} elseif ($result_nv) {
    $data = [
        "id" => $result_nv->id,
        "displayname" => $result_nv->username,
        "username" => $result_nv->password,
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
} else {
    $data = [
        "error" => "Thông tin đăng nhập không đúng!.",
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
}