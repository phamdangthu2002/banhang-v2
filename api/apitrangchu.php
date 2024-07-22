<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');
require_once '../model/SanPhamModel.php';
require_once '../model/AnhSpModel.php';
require_once '../model/CommonModel.php';

// Tạo các đối tượng model cần thiết
$sp = new SanPhamModel();
$anhSp = new AnhSpModel();
$cm = new CommonModel();

// Lấy dữ liệu từ các endpoint và gom chúng vào một mảng dữ liệu tổng hợp
$data = [
    "top_updated_5" => $sp->SanPham__Get_Top_Updated(6),
    "top_updated_8" => $sp->SanPham__Get_Top_Updated(16),
    "top_sale" => $sp->SanPham__Get_Top_Sale(),
    "top_random" => $sp->SanPham__Get_Top_Random(6)
];

// Trả về mảng dữ liệu tổng hợp dưới dạng JSON
echo json_encode($data, JSON_UNESCAPED_UNICODE);
?>
