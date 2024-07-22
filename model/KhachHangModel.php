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

class KhachHangModel extends Database
{

    public function KhachHang__Get_All($trangthai = null)
    {
        if($trangthai != -1){
            $obj = $this->connect->prepare("SELECT * FROM khachhang");
        }else{
            $obj = $this->connect->prepare("SELECT * FROM khachhang");
        }
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute();
        return $obj->fetchAll();
    }
    // public function KhachHang__Add($tenkh, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai)
    // {
    //     $obj = $this->connect->prepare("INSERT INTO khachhang(tenkh, gioitinh, ngaysinh, sodienthoai, diachi, email, password, trangthai) VALUES (?,?,?,?,?,?,?,?)");
    //     $obj->execute(array($tenkh, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai));
    //     return $obj->rowCount();
    // }

    public function KhachHang__Dangky($tenkh, $email, $password, $trangthai)
    {
        $obj = $this->connect->prepare("INSERT INTO khachhang(tenkh, email, password, trangthai) VALUES (?,?,?,?)");
        $obj->execute(array($tenkh,$email, $password, $trangthai));
        return $obj->rowCount();
    }
    public function KhachHang__Add($tenkh, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai)
    {
        $obj = $this->connect->prepare("INSERT INTO khachhang(tenkh, gioitinh, ngaysinh, sodienthoai, diachi, email, password, trangthai) VALUES (?,?,?,?,?,?,?,?)");
        $obj->execute(array($tenkh, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai));
        return $obj->rowCount();
    }

    public function KhachHang__Update($makh, $tenkh, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai)
    {
        $obj = $this->connect->prepare("UPDATE khachhang SET tenkh=?, gioitinh=?, ngaysinh=?, sodienthoai=?, diachi=?, email=?, password=?, trangthai=? WHERE makh=?");
        $obj->execute(array($tenkh, $gioitinh, $ngaysinh, $sodienthoai, $diachi, $email, $password, $trangthai, $makh));
        return $obj->rowCount();
    }
    
    public function KhachHang__Update_Info($makh, $tenkh, $sodienthoai, $diachi, $email)
    {
        $obj = $this->connect->prepare("UPDATE khachhang SET tenkh=?, sodienthoai=?, diachi=?, email=? WHERE makh=?");
        $obj->execute(array($tenkh, $sodienthoai, $diachi, $email, $makh));
        return $obj->rowCount();
    }
    

    public function KhachHang__Delete($makh)
    {
        $obj = $this->connect->prepare("DELETE FROM khachhang WHERE makh = ?");
        $obj->execute(array($makh));
        return $obj->rowCount();
    }

    public function KhachHang__Get_By_Id($makh)
    {
        $obj = $this->connect->prepare("SELECT * FROM khachhang WHERE makh = ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($makh));
        return $obj->fetch();
    }

    
    public function KhachHang__Check_Email($email)
    {
        $obj = $this->connect->prepare("SELECT * FROM khachhang WHERE email = ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($email));
        if ($obj->rowCount() > 0) {
            return false;
        } else {
            return true;
        }
    }

    public function KhachHang__Get_By_Phan_Quyen($sodienthoai, $diachi, $email, $password)
    {
        $obj = $this->connect->prepare("SELECT * FROM khachhang WHERE sodienthoai = ? AND diachi, $email, $password = ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($sodienthoai, $diachi, $email, $password));
        return $obj->fetch();
    }

    public function KhachHang__Dang_Nhap($email, $password)
    {
        $obj = $this->connect->prepare("SELECT * FROM khachhang WHERE email =? AND `password` = ?");
        $obj->setFetchMode(PDO::FETCH_OBJ);
        $obj->execute(array($email, $password));
        if ($obj->rowCount() > 0) {
            return $obj->fetch();
        } else {
            return false;
        }
    }

    public function Khachhang__UploadAvatar($id, $avatar)
    {
        try {
            // Thư mục lưu trữ ảnh
            $upload_dir = "uploads/";
            if (!file_exists($upload_dir)) {
                mkdir($upload_dir, 0755, true);
            }

            // Kiểm tra kích thước và loại tệp ảnh (ví dụ: chỉ chấp nhận định dạng hình ảnh phổ biến như JPEG, PNG, GIF)
            $allowed_types = array('image/jpeg', 'image/png', 'image/gif');
            if (!in_array($avatar['type'], $allowed_types)) {
                throw new Exception("Loại tệp không hợp lệ. Chỉ chấp nhận JPEG, PNG, GIF.");
            }
            if ($avatar['size'] > 10 * 1024 * 1024) { // Giới hạn kích thước tệp ảnh là 10MB
                throw new Exception("Kích thước tệp quá lớn. Vui lòng chọn một tệp nhỏ hơn.");
            }

            // Tên tệp ảnh mới (có thể sử dụng ID của người dùng làm tên tệp)
            $avatar_filename = $id . "_" . time() . "_" . basename($avatar["name"]);
            $avatar_path = $upload_dir . $avatar_filename;

            // Lưu trữ tệp ảnh vào thư mục lưu trữ
            if (move_uploaded_file($avatar["tmp_name"], $avatar_path)) {
                // Cập nhật đường dẫn avatar trong cơ sở dữ liệu
                $obj = $this->connect->prepare("UPDATE users SET avatar=? WHERE id=?");
                $success = $obj->execute(array($avatar_path, $id));

                if ($success) {
                    // Trả về thông tin người dùng sau khi cập nhật avatar
                    return $this->KhachHang__Get_By_Id($id);
                } else {
                    throw new Exception("Không thể cập nhật đường dẫn avatar.");
                }
            } else {
                throw new Exception("Không thể lưu trữ tệp ảnh.");
            }
        } catch (Exception $e) {
            // Xử lý lỗi nếu có
            echo "Lỗi khi cập nhật avatar: " . $e->getMessage();
            return null;
        }
    }
}
