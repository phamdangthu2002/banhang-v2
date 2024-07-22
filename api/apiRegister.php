<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');

require "../model/KhachHangModel.php";

// Kiểm tra phương thức gửi dữ liệu
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    // Trả về thông báo lỗi nếu không phải là phương thức POST
    $data = [
        "error" => "Yêu cầu không hợp lệ!"
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    // Dừng việc thực thi mã
    exit;
}

// Kiểm tra các trường dữ liệu cần thiết
if (!isset($_POST["tenkh"]) || !isset($_POST["username"]) || !isset($_POST["password"])) {
    // Trả về thông báo lỗi nếu thiếu trường dữ liệu
    $data = [
        "error" => "Thiếu thông tin đăng ký!"
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    // Dừng việc thực thi mã
    exit;
}

// Lấy dữ liệu từ POST
$displayname = $_POST["tenkh"];
$username = $_POST["username"];
$password = $_POST["password"];

// Tạo đối tượng KhachHangModel
$user = new KhachHangModel();

// Gọi phương thức đăng ký tài khoản
$result = $user->KhachHang__Dangky($tenkh, $username, $password,$trangthai);

// Kiểm tra kết quả đăng ký
if ($result > 0) {
    // Nếu thành công, trả về thông tin tài khoản
    $data = [
        "success" => "Đăng ký tài khoản thành công!"
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
} else {
    // Nếu không thành công, trả về thông báo lỗi
    $data = [
        "error" => "Lỗi đăng ký tài khoản!"
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
}
