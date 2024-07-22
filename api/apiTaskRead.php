<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');
require "../model/TaskModel.php";
$task = new TaskModel();
$result = $task->Task__Get_All();
echo json_encode($result, JSON_UNESCAPED_UNICODE);
?>