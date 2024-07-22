<?php
require_once "../model/LoaiSpModel.php";
require_once "../model/ThuongHieuModel.php";
require_once "../model/ChiTietGioHangModel.php";
require_once "../model/GioHangModel.php";
$loaisp = new LoaiSpModel();
$th = new ThuongHieuModel();
$ctgh = new ChiTietGioHangModel();
$gh = new GioHangModel();
// Lấy danh sách thể loại
$loaiSp__Get_All = $loaisp->LoaiSp__Get_All();
$thuongHieu__Get_All = $th->ThuongHieu__Get_All();
?>

<style>
    header {
        position: fixed;
        width: 100%;
        top: 0;
        z-index: 1000;
        transition: top 0.5s ease-in-out;
        border-radius: 15px;
        transform: translateX(-1.7px);
    }
</style>

<!-- Header -->
<header class="p-3 text-white bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a class="navbar-logo" href="./index.php">
                <img alt="logo" src="../assets/images/1.png">
            </a>
            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="index.php" class="nav-link px-2 text-white btn btn-secondary">Trang chủ</a></li>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Thương hiệu
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <!-- Lặp qua mảng và tạo các mục trong dropdown -->
                        <?php foreach ($thuongHieu__Get_All as $item): ?>
                            <li><a class='dropdown-item' href="index.php?pages=thuong-hieu&math=<?= $item->math ?>">
                                    <?= $item->tenth ?>
                                </a></li>
                        <?php endforeach ?>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                    </ul>
                </div>
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Sản phẩm
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <!-- Lặp qua mảng và tạo các mục trong dropdown -->
                        <?php foreach ($loaiSp__Get_All as $item): ?>
                            <li><a class='dropdown-item' href="index.php?pages=loai-sp&maloai=<?= $item->maloai ?>">
                                    <?= $item->tenloai ?>
                                </a></li>
                        <?php endforeach ?>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                    </ul>
                </div>
            </ul>
            <div class="navbar-display-user-action">
                <a href="#" class="nav-link px-2 text-white btn btn-secondary">
                    <?php if (isset($_SESSION['user'])): ?>
                        <div class="navbar-display-cart" onclick="return(location.href='./index.php?pages=gio-hang')">
                            <i class='bx bxs-cart'>
                                <?php
                                $res = 0;
                                if (isset($_SESSION['user'])) {
                                    $magh = isset($gh->GioHang__Get_By_Id_Kh($_SESSION['user']->makh)->magh) ? $gh->GioHang__Get_By_Id_Kh($_SESSION['user']->makh)->magh : 0;
                                    $res = count($ctgh->ChiTietGioHang__Get_By_Id_GH($magh));
                                }
                                ?>
                                <span id="cart-item">
                                    <?= ($res) ?>
                                </span>
                            </i>
                        </div>

                    <?php else: ?>
                        <div class="navbar-display-cart" onclick="return checkLogin()">
                            <i class='bx bxs-cart'>
                                <span id="cart-item">0</span>
                            </i>
                        </div>
                    <?php endif ?>
                </a>
            </div>
            <div class="navbar-search col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                <input type="text" id="search-box" class="form-control form-control-dark" placeholder="Search..."
                    aria-label="Search">
                <div class="icon">
                    <i class="bx bx-search"></i>
                </div>
            </div>
            <div class="text-end">
                <!-- Kiểm tra nếu người dùng đã đăng nhập -->
                <?php if (isset($_SESSION['user'])): ?>
                    <!-- Hiển thị dropdown khi đã đăng nhập -->
                    <div class="dropdown text-end">
                        <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle show"
                            data-bs-toggle="dropdown" aria-expanded="true">
                            <img width="40" height="50" class="rounded-circle btn btn-secondary"
                                src="../assets/images/personal.png">
                        </a>
                        <ul class="dropdown-menu text-small hidden"
                            style="position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(0px, 34px);"
                            data-popper-placement="bottom-start">
                            <li><a class="dropdown-item" href="../auth/pages/chinh-sua.php">Chỉnh sửa</a></li>
                            <li><a class="dropdown-item" href="index.php?pages=don-hang">Đơn hàng</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#" onclick="confirmLogout()">Sign out</a></li>
                        </ul>
                    </div>
                <?php else: ?>

                    <!-- Hiển thị nút Đăng nhập nếu chưa đăng nhập -->
                    <button type="button" class="btn btn-outline-light me-2"
                        onclick="window.location.href='../auth?pages=dang-nhap'">Login</button>
                    <!-- Nút Đăng ký -->
                    <button type="button" class="btn btn-warning"
                        onclick="window.location.href='../auth?pages=dang-ky'">Sign-up</button>
                <?php endif; ?>
            </div>
        </div>
    </div>
</header>

<script>
    let lastScrollTop = 0;
    const header = document.querySelector("header");

    window.addEventListener("scroll", function () {
        let currentScroll = window.pageYOffset || document.documentElement.scrollTop;

        if (currentScroll > lastScrollTop) {
            header.style.top = "-100px";
        } else {
            header.style.top = "0";
        }

        lastScrollTop = currentScroll;
    });


    function confirmLogout() {
        Swal.fire({
            title: 'Xác nhận đăng xuất',
            text: 'Bạn có chắc chắn muốn đăng xuất không?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonText: 'Đồng ý',
            cancelButtonText: 'Hủy',
        }).then((result) => {
            // Nếu người dùng đồng ý, thực hiện đăng xuất
            if (result.isConfirmed) {
                window.location.href = "../auth/pages/action.php?req=dang-xuat-user";
            }
        });

        return false; // Ngăn chặn hành động mặc định của thẻ 'a'
    }
</script>