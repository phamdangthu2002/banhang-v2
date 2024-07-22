<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');
require "../model/TaskModel.php";
$task = new TaskModel();
$keyword = isset($_POST["keyword"]) ? $_POST["keyword"] : '';
$result = $task->Task__Get_By_Keyword($keyword);
echo json_encode($result, JSON_UNESCAPED_UNICODE);
?>