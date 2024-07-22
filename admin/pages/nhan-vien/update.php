<?php
require_once '../../../model/NhanVienModel.php';
$nv = new NhanVienModel();
$manv = $_POST['manv'];
// Lấy thông tin nhân viên từ bảng nhanvien
$nhanVien__Get_By_Id = $nv->NhanVien__Get_By_Id($manv);

?>

<div class="main-update">
    <h3 class="section-title">Cập nhật nhân viên</h3>
    <form class="form-group" action="pages/nhan-vien/action.php?req=update" method="post">
        <input type="hidden" class="form-control" id="manv" name="manv" required value="<?= $nhanVien__Get_By_Id->manv ?>">
        <div class="col">
            <label for="tennv" class="form-label">Tên nhân viên</label>
            <input type="text" class="form-control" id="tennv" name="tennv" required value="<?= $nhanVien__Get_By_Id->tennv ?>">
        </div>
        <div class="row">
            <div class="col">
                <label for="ngaysinh" class="form-label">Ngày sinh</label>
                <input type="date" min="<?= date('Y-m-d', strtotime('-100 years')) ?>" max="<?= date('Y-m-d', strtotime('-18 years')) ?>" class="form-control" id="ngaysinh" name="ngaysinh" required value="<?= $nhanVien__Get_By_Id->ngaysinh ?>">
            </div>
            <div class="col">
                <label for="gioitinh" class="form-label">Giới tính</label>
                <select class="form-select " aria-label=".gioitinh" id="gioitinh" name="gioitinh">
                    <option value="0" <?= $nhanVien__Get_By_Id->gioitinh == 0 ? 'selected' : '' ?>>Nam</option>
                    <option value="1" <?= $nhanVien__Get_By_Id->gioitinh == 1 ? 'selected' : '' ?>>Nữ</option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required value="<?= $nhanVien__Get_By_Id->email ?>">
            </div>
            <div class="col">
                <label for="password_new" class="form-label">Password</label>
                <input type="password" class="form-control" id="password_new" name="password_new" value="" placeholder="Bỏ qua nếu không đổi mật khẩu">
            </div>
        </div>
        <div class="row">
            <div class="col">
                <label for="sodienthoai" class="form-label">Số điện thoại</label>
                <input type="tel" pattern="[0-9]{10}" minlength="10" maxlength="10" class="form-control" id="sodienthoai" name="sodienthoai" required value="<?= $nhanVien__Get_By_Id->sodienthoai ?>">
            </div>
            <div class="col">
                <label for="trangthai" class="form-label">Trạng thái</label>
                <select class="form-select " aria-label=".trangthai" id="trangthai" name="trangthai">
                    <option value="1"<?= $nhanVien__Get_By_Id->trangthai == 1 ? 'selected' : '' ?>>Hoạt động</option>
                    <option value="0"<?= $nhanVien__Get_By_Id->trangthai == 0 ? 'selected' : '' ?>>Tạm khóa</option>
                </select>
            </div>
        </div>
        <div class="col">
            <label for="diachi" class="form-label">Địa chỉ</label>
            <input type="diachi" class="form-control" id="diachi" name="diachi" required value="<?= $nhanVien__Get_By_Id->diachi ?>">
        </div>
        <div class="col">
            <label for="phanquyen" class="form-label">Phân quyền</label>
            <select class="form-select " aria-label=".phanquyen" id="phanquyen" name="phanquyen">
                <option value="1" <?= $nhanVien__Get_By_Id->phanquyen == 1 ? 'selected' : '' ?>>Manager</option>
                <option value="2" <?= $nhanVien__Get_By_Id->phanquyen == 2 ? 'selected' : '' ?>>Nhân viên</option>
            </select>
        </div>
        <br />
        <div class="col text-center">
            <button type="submit" class="btn btn-primary">Lưu thông tin</button>
        </div>
    </form>
</div>