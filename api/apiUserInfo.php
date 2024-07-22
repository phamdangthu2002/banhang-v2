<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');
require "../model/UserModel.php";
$user = new UserModel();
$id = isset($_POST["id"]) ? $_POST["id"] : "";
$result = $user->User__Get_By_Id($id);
if ($result != null) {
    $data = [
        "id" => $result->id,
        "displayname" => $result->displayname,
        "username" => $result->username,
        "avatar" => $result->avatar,
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
} else {
    $data = [
        "error" => "Lỗi đăng ký tài khoản!",
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
}