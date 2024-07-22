<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');
require "../model/TaskModel.php";
$task = new TaskModel();
$id = isset($_POST["id"]) ? $_POST["id"] : '';
$result = $task->Task__Delete($id);
if ($result) {
    $data = [
        "success" => "Thao tác thành công!",
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
} else {
    $data = [
        "error" => "Cập nhật không thành công!",
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
}