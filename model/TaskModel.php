<?php

$a = "./config/connect.php";
$b = "../config/connect.php";
$c = "../../config/connect.php";
$d = "../../../config/connect.php";
$e = "../../../../config/connect.php";
$f = "../../../../../config/connect.php";

if (file_exists($a)) {
    $des = $a;
}
if (file_exists($b)) {
    $des = $b;
}
if (file_exists($c)) {
    $des = $c;
}
if (file_exists($d)) {
    $des = $d;
}

if (file_exists($e)) {
    $des = $e;
}

if (file_exists($f)) {
    $des = $f;
}
include_once($des);

class TaskModel extends Database
{

    public function Task__Get_All()
    {
        $obj = $this->connect->prepare("SELECT * FROM tasks");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute();
        return $obj->fetchAll();
    }
    
    public function Task__Add($title, $description)
    {
        $obj = $this->connect->prepare("INSERT INTO tasks(title, description) VALUES (?,?)");
        $obj->execute(array($title, $description));
        if ($obj->rowCount() > 0) {
            $res = $this->Task__Get_By_Id($this->connect->lastInsertId());
            return $res;
        }
    }

    public function Task__Update($id, $title, $description)
    {
        $obj = $this->connect->prepare("UPDATE tasks SET title=?, description=? WHERE id=?");
        $obj->execute(array($title, $description, $id));
        if ($obj->rowCount() > 0) {
            $res = $this->Task__Get_By_Id($id);
            return $res;
        }
    }

    public function Task__Delete($id)
    {
        $obj = $this->connect->prepare("DELETE FROM tasks WHERE id=?");
        $obj->execute(array($id));
        return $obj->rowCount();
    }

    public function Task__Get_By_Id($id)
    {
        $obj = $this->connect->prepare("SELECT * FROM tasks WHERE id=?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($id));
        return $obj->fetch();
    }

    public function Task__Get_By_Keyword($keyword)
    {
        $obj = $this->connect->prepare("SELECT * FROM tasks WHERE title LIKE ? OR description LIKE ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array("%$keyword%", "%$keyword%"));
        return $obj->fetchAll();
    }
}