<?php
require_once '../model/CommonModel.php';
require_once '../model/SanPhamModel.php';
require_once '../model/LoaiSpModel.php';
require_once '../model/AnhSpModel.php';
$cm = new CommonModel();
$anhSp = new AnhSpModel();
$loaiSp = new LoaiSpModel();
$sp = new SanPhamModel();

// Lấy số trang từ tham số truyền vào hoặc mặc định là 1
$maloai = isset($_GET['maloai']) ? intval($_GET['maloai']) : 1;
$page_number = isset($_GET['page']) ? intval($_GET['page']) : 1;

// Lấy danh sách truyện cho trang hiện tại
$sanPham__Get_By_Loai_Paged = $sp->SanPham__Get_By_Loai_Paged($page_number, $maloai);
?>
<br><br><br>
<br><br><br>
<div class="container">
    <div class="main-container">
        <div class="main-title-container">
            <a href="index.php?pages=loai-spc">
                <div class="item-title color-2"><i class='bx bx-star bx-tada'></i>Sản phẩm loại
                    <?= $loaiSp->LoaiSp__Get_By_Id($maloai)->tenloai ?>
                </div>
            </a>
        </div>
        <div class="row">
            <?php if (count($sanPham__Get_By_Loai_Paged) > 0): ?>
                <?php foreach ($sanPham__Get_By_Loai_Paged as $item): ?>
                    <?php $anhSp__Get_By_Id_Sp_First = $anhSp->AnhSp__Get_By_Id_Sp_First($item->masp); ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 mb-5">
                        <div class="product-item">
                            <div class="manga-container__right">
                                <div class="manga-thumbnail">
                                    <img src="../assets/<?= $anhSp__Get_By_Id_Sp_First->hinhanh ?>">
                                    <span class="manga-note background-8">
                                        <?= number_format($item->dongia) ?>đ</i>
                                    </span>
                                </div>
                            </div>
                            <div class="product-info">

                                <h3><?= $item->tensp ?></h3>
                                <p class="price"><?= $item->dongia ?> VND</p>
                                <a href="index.php?pages=chi-tiet&masp=<?= $anhSp__Get_By_Id_Sp_First->masp ?>"
                                    class="btn btn-outline-dark">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                <?php endforeach ?>
            <?php else: ?>
                Không tìm thấy...
            <?php endif ?>
        </div>
    </div>
</div>
<main class="main">

    <div class="pagination-container">
        <div class="pagination">
            <?php
            $total_pages = ceil(count($sanPham__Get_By_Loai_Paged) / 10);
            ?>
            <!-- // Hiển thị nút đầu trang -->
            <?php if ($page_number > 1): ?>
                <a href="index.php?pages=loai-sp&maloai=<?= $maloai ?>&page=1" class='pagination-link'>Đầu trang</a>
            <?php endif ?>


            <?php if ($page_number > 1): ?>
                <a href="index.php?pages=loai-sp&maloai=<?= $maloai ?>&page=<?= $page_number - 1 ?> "
                    class='pagination-link'>Trang
                    trước</a>
            <?php endif ?>

            <!-- // Hiển thị các trang gần đó -->
            <?php for ($i = max(1, $page_number - 2); $i <= min($page_number + 2, $total_pages); $i++): ?>
                <a href="index.php?pages=loai-sp&maloai=<?= $maloai ?>&page=<?= $i ?> " class='pagination-link'
                    <?= ($page_number == $i ? 'active' : '') ?>>
                    <?= $i ?>
                </a>
            <?php endfor ?>

            <?php if ($page_number < $total_pages): ?>
                <a href="index.php?pages=loai-sp&maloai=<?= $maloai ?>&page=<?= ($page_number + 1) ?>  "
                    class='pagination-link'>Trang
                    sau</a>
            <?php endif ?>

            <!-- // Hiển thị nút cuối trang -->
            <?php if ($page_number < $total_pages): ?>
                <a href="index.php?pages=loai-sp&maloai=<?= $maloai ?>&page=<?= $total_pages ?> "
                    class='pagination-link'>Cuối
                    trang</a>
            <?php endif ?>
        </div>
    </div>

</main>
<script>
    window.addEventListener('load', function () {
        document.getElementById('dynamicTitle').innerText = "<?= $_SESSION['user']->tenkh ?> | <?= $loaiSp->LoaiSp__Get_By_Id($maloai)->tenloai ?>";
    })
</script>