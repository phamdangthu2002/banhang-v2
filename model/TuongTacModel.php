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

class TuongTacModel extends Database
{

    public function TuongTac__Get_All()
    {
        $obj = $this->connect->prepare("SELECT * FROM tuong_tac");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute();
        return $obj->fetchAll();
    }

    function TuongTac__Check_Exist($makh, $loaituongtac, $masp)
    {
        $sql = "SELECT COUNT(*) as count FROM tuong_tac WHERE makh = ? AND loaituongtac = ? AND masp = ?";
        $obj = $this->connect->prepare($sql);
        $obj->execute([$makh, $loaituongtac, $masp]);
        $result = $obj->fetch(PDO::FETCH_ASSOC);

        return $result['count'] > 0;
    }

    // Hàm thêm mới hoặc cập nhật thông tin
    function TuongTac__AddOrUpdate($noidung, $rating, $loaituongtac, $masp, $makh)
    {
        // Kiểm tra xem thông tin đã tồn tại chưa
        $kiemTraTuongTac = $this->TuongTac__Check_Exist($makh, $loaituongtac, $masp);

        if (!$kiemTraTuongTac) {
            // Nếu chưa tồn tại, thêm mới thông tin
            $obj = $this->connect->prepare("INSERT INTO tuong_tac(noidung, rating, loaituongtac, masp, makh) VALUES (?, ?, ?, ?, ?)");
            $obj->execute([$noidung, $rating, $loaituongtac, $masp, $makh]);
            return $obj->rowCount();
        } else {
            // Nếu đã tồn tại, cập nhật thông tin
            $obj = $this->connect->prepare("UPDATE tuong_tac SET noidung=?, rating=?, masp=? WHERE makh=? AND loaituongtac=?");
            $obj->execute([$noidung, $rating, $masp, $makh, $loaituongtac]);
            return $obj->rowCount();
        }
    }
}
