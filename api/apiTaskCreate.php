<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');
require "../model/TaskModel.php";
$task = new TaskModel();
$title = isset($_POST["title"]) ? $_POST["title"] : "";
$description = isset($_POST["description"]) ? $_POST["description"] : "";
$result = $task->Task__Add($title, $description);
if ($result != null) {
    $data = [
        "id" => $result->id,
        "title" => $result->title,
        "description" => $result->description,
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
} else {
    $data = [
        "error" => "Thêm không thành công!",
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
}