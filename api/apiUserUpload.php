<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');
require "../model/UserModel.php";
$user = new UserModel();
$id = isset($_POST["id"]) ? $_POST["id"] : "";
$avatar = isset($_FILES["file"]) ? $_FILES["file"] : null;

$result = $user->User__UploadAvatar($id, $avatar);
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
        "error" => $avatar,
    ];
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
}

?>
