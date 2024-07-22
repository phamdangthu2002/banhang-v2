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
include_once ($des);

class NhanVienModel extends Database
{

    public function NhanVien__Get_All()
    {
        $obj = $this->connect->prepare("SELECT * FROM nhanvien");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute();
        return $obj->fetchAll();
    }
    public function NhanVien__Add($tennv, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai, $phanquyen)
    {
        $obj = $this->connect->prepare("INSERT INTO nhanvien(tennv, gioitinh, ngaysinh, sodienthoai, diachi, email, password, trangthai, phanquyen) VALUES (?,?,?,?,?,?,?,?,?)");
        $obj->execute(array($tennv, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai, $phanquyen));
        return $obj->rowCount();
    }

    public function NhanVien__Update($manv, $tennv, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai, $phanquyen)
    {
        $obj = $this->connect->prepare("UPDATE nhanvien SET tennv=?, gioitinh=?, ngaysinh=?, sodienthoai=?, diachi=?, email=?, password=?, trangthai=?, phanquyen=? WHERE manv=?");
        $obj->execute(array($tennv, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai, $phanquyen, $manv));
        return $obj->rowCount();
    }

    public function NhanVien__Delete($manv)
    {
        $obj = $this->connect->prepare("DELETE FROM nhanvien WHERE manv = ?");
        $obj->execute(array($manv));
        return $obj->rowCount();
    }

    public function NhanVien__Check_Email($email)
    {
        $obj = $this->connect->prepare("SELECT * FROM nhanvien WHERE email = ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($email));
        if ($obj->rowCount() > 0) {
            return false;
        } else {
            return true;
        }
    }

    public function NhanVien__Get_By_Id($manv)
    {
        $obj = $this->connect->prepare("SELECT * FROM nhanvien WHERE manv = ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($manv));
        return $obj->fetch();
    }

    public function NhanVien__Get_By_Phan_Quyen($sodienthoai, $diachi, $email, $password)
    {
        $obj = $this->connect->prepare("SELECT * FROM nhanvien WHERE sodienthoai = ? AND diachi, $email, $password = ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($sodienthoai, $diachi, $email, $password));
        return $obj->fetch();
    }

    public function NhanVien__Dang_Nhap($email, $password)
    {
        $obj = $this->connect->prepare("SELECT * FROM nhanvien WHERE email =? AND password = ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($email, $password));
        if ($obj->rowCount() > 0) {
            return $obj->fetch();
        } else {
            return 0;
        }
    }
}
