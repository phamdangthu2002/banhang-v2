<?php
require_once '../model/SanPhamModel.php';
require_once '../model/AnhSpModel.php';
require_once '../model/CommonModel.php';
$sp = new SanPhamModel();
$anhSp = new AnhSpModel();
$cm = new CommonModel();
$sp__Get_Top_Updated_5 = $sp->SanPham__Get_Top_Updated(4);
$sp__Get_Top_Updated_8 = $sp->SanPham__Get_Top_Updated(12);
$sp__Get_Top_Sale = $sp->SanPham__Get_Top_Sale();
$sp__Get_Top_Random = $sp->SanPham__Get_Top_Random(4);

$top = 0;
?>
<style>
    
/* banner */
.banner {
    width: 100%;
    height: 100%;
    overflow: hidden;
    border-radius: 15px;
    background-color: #fff;
    /* box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); */
    position: relative;
  }
  .banner .slides {
    display: flex;
    width: 100%;
    height: 100%;
    transition: transform 1s ease-in-out;
  }
  .banner img {
    width: 100%;
    height: 100%;
    flex-shrink: 0;
  }
  .banner .controls {
    position: absolute;
    top: 50%;
    width: 100%;
    display: flex;
    justify-content: space-between;
    transform: translateY(-50%);
  }
  .banner .controls span {
    cursor: pointer;
    background-color: rgba(0, 0, 0, 0.5);
    color: white;
    padding: 10px;
    border-radius: 50%;
  }
  .banner .dots {
    position: absolute;
    bottom: 10px;
    width: 100%;
    text-align: center;
  }
  .banner .dots span {
    cursor: pointer;
    height: 15px;
    width: 15px;
    margin: 0 5px;
    background-color: rgba(0, 0, 0, 0.5);
    border-radius: 50%;
    display: inline-block;
  }
  .banner .dots span.active {
    background-color: white;
  }
</style>
<br><br>
<br><br>
<br><br>

<div class="container">
<div class="banner" id="banner">
    <div class="slides" id="slides">
        <img src="../assets/images/banner_img.png" class="active" alt="Image 1">
        <img src="../assets/images/banner_img1.png" alt="Image 2">
        <img src="../assets/images/banner_img2.png" alt="Image 3">
    </div>
    <div class="controls">
        <span id="prev">&#10094;</span>
        <span id="next">&#10095;</span>
    </div>
    <div class="dots" id="dots"></div>
</div>
</div>


<div class="container">
    <div class="main-center mb-5">
        <div class="main-title-container">
            <a href="index.php?pages=sp-moi&page=1">
                <div class="item-title color-7"><i class='bx bx-star bx-tada text-center'></i>MỚI CẬP NHẬT</div>
            </a>
        </div>
    </div>
    <div class="row">
        <?php foreach ($sp__Get_Top_Updated_5 as $item): ?>
            <?php if (count($sp__Get_Top_Updated_5) > 0): ?>
                <?php $anhSp__Get_By_Id_Sp_First = $anhSp->AnhSp__Get_By_Id_Sp_First($item->masp); ?>
                <?php if (isset($anhSp__Get_By_Id_Sp_First->masp)): ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 mb-5">
                        <div class="product-item">
                            <div class="manga-container__right">

                                <div class="manga-thumbnail">
                                    <img src="../assets/<?= $anhSp__Get_By_Id_Sp_First->hinhanh ?>">
                                    <span class="manga-note background-1"><i class="bx bxs-badge-dollar"></i>
                                        <?= $cm->getTimeAgo($item->ngaythem) ?>
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
                <?php else: ?>
                    <a href="index.php?pages=chi-tiet&masp=<?= $item->masp ?>">
                        <div class="manga-container">
                            <div class="manga-thumbnail">
                                <img src="../assets/<?= $item->hinhanh ?>">
                                <span class="manga-note background-1">Đang cập nhật... <i class="bx bxs-star"></i></span>
                            </div>
                            <div class="manga-title color-1">
                                <?= $item->tensp ?>
                            </div>
                        </div>
                    </a>
                <?php endif ?>
            <?php endif ?>
        <?php endforeach; ?>
    </div>
</div>

<div class="container">
    <div class="main-center mb-5">
        <div class="main-title-container">
            <a href="index.php?pages=sp-top">
                <div class="item-title color-8"><i class='bx bx-star bx-tada'></i>Sản phẩm chất lượng</div>
            </a>
        </div>
    </div>
    <div class="row">
        <?php foreach ($sp__Get_Top_Updated_8 as $item): ?>
            <?php if (count($sp__Get_Top_Updated_8) > 0): ?>
                <?php $anhSp__Get_By_Id_Sp_First = $anhSp->AnhSp__Get_By_Id_Sp_First($item->masp); ?>
                <?php if (isset($anhSp__Get_By_Id_Sp_First->masp)): ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 mb-5">
                        <div class="product-item">
                            <div class="manga-container__right">
                                <div class="manga-thumbnail">
                                    <img src="../assets/<?= $anhSp__Get_By_Id_Sp_First->hinhanh ?>">
                                    <span class="manga-note background-1"><i class="bx bxs-badge-dollar"></i>
                                        <?= number_format($item->dongia) ?>đ
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
                <?php else: ?>
                    <a href="index.php?pages=chi-tiet&masp=<?= $item->masp ?>">
                        <div class="manga-container">
                            <div class="manga-thumbnail">
                                <img src="../assets/<?= $item->hinhanh ?>">
                                <span class="manga-note background-1">Đang cập nhật... <i class="bx bxs-star"></i></span>
                            </div>
                            <div class="manga-title color-1">
                                <?= $item->tensp ?>
                            </div>
                        </div>
                    </a>
                <?php endif ?>
            <?php endif ?>
        <?php endforeach; ?>
    </div>
</div>

<div class="container">
    <div class="main-center mb-5">
        <div class="main-title-container__right">
            <a href="index.php?pages=sp-top">
                <div class="item-title color-3"><i class='bx bx-star bx-tada'></i>TOP BÁN CHẠY</div>
            </a>
        </div>
    </div>
    <div class="row">
        <?php foreach ($sp__Get_Top_Sale as $item): ?>
            <?php if (count($sp__Get_Top_Sale) > 0): ?>
                <?php $anhSp__Get_By_Id_Sp_First = $anhSp->AnhSp__Get_By_Id_Sp_First($item->masp); ?>
                <?php if (isset($anhSp__Get_By_Id_Sp_First->masp)): ?>
                    <div class="col-lg-3 col-md-6 col-sm-12 mb-5">
                        <div class="product-item">
                            <div class="manga-container__right" id="top_<?= $top++ ?>">
                                <div class="manga-thumbnail">
                                    <img src="../assets/<?= $anhSp__Get_By_Id_Sp_First->hinhanh ?>">
                                    <span class="manga-note background-7"> <b>Top
                                            <?= $top ?>
                                        </b> |
                                        <?= $cm->formatThousand($item->luotmua) ?> lượt mua
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
                <?php else: ?>
                    <a href="index.php?pages=chi-tiet&masp=<?= $item->masp ?>">
                        <div class="manga-container">
                            <div class="manga-thumbnail">
                                <img src="../assets/<?= $item->hinhanh ?>">
                                <span class="manga-note background-1">Đang cập nhật... <i class="bx bxs-star"></i></span>
                            </div>
                            <div class="manga-title color-1">
                                <?= $item->tensp ?>
                            </div>
                        </div>
                    </a>
                <?php endif ?>
            <?php endif ?>
        <?php endforeach; ?>
    </div>
</div>

<div class="container">
    <div class="main-center mb-5">
        <div class="main-title-container">
            <a href="index.php?pages=sp-ngau-nhien">
                <div class="item-title color-8"><i class='bx bx-book-reader'></i>HÔM NAY MUA GÌ?</div>
            </a>
        </div>
    </div>
    <div class="row">
        <?php foreach ($sp__Get_Top_Random as $item): ?>
            <?php if (count($sp__Get_Top_Random) > 0): ?>
                <?php $anhSp__Get_By_Id_Sp_First = $anhSp->AnhSp__Get_By_Id_Sp_First($item->masp); ?>
                <?php if (isset($anhSp__Get_By_Id_Sp_First->masp)): ?>
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
                <?php else: ?>
                    <a href="index.php?pages=chi-tiet&masp=<?= $item->masp ?>">
                        <div class="manga-container">
                            <div class="manga-thumbnail">
                                <img src="../assets/<?= $item->hinhanh ?>">
                                <span class="manga-note background-1">Đang cập nhật... <i class="bx bxs-star"></i></span>
                            </div>
                            <div class="manga-title color-1">
                                <?= $item->tensp ?>
                            </div>
                        </div>
                    </a>
                <?php endif ?>
            <?php endif ?>
        <?php endforeach; ?>
    </div>
</div>
<script>
    window.addEventListener('load', function () {
        document.getElementById('dynamicTitle').innerText = "Trang chủ";
    })

    $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            autoplay: true,
            autoplayTimeout: 10000,
            autoplayHoverPause: true,
            autoplaySpeed: 3000,
            smartSpeed: 3000,
            fluidSpeed: 3000,
            dragEndSpeed: 3000,
            touchDrag: true,
            mouseDrag: true,
            responsive: {
                0: {
                    items: 1
                },
                500: {
                    items: 1
                },
                1000: {
                    items: 1
                }
            }

        });
    });
</script>
<script>
    const slides = document.getElementById('slides');
    const images = slides.children;
    const dotsContainer = document.getElementById('dots');
    let currentIndex = 0;

    // Create dots
    Array.from(images).forEach((image, index) => {
        const dot = document.createElement('span');
        dot.addEventListener('click', () => setCurrentImage(index));
        dotsContainer.appendChild(dot);
    });

    const dots = dotsContainer.children;
    dots[currentIndex].classList.add('active');

    function setCurrentImage(index) {
        dots[currentIndex].classList.remove('active');
        currentIndex = index;
        dots[currentIndex].classList.add('active');
        updateSlidePosition();
    }

    function updateSlidePosition() {
        slides.style.transform = `translateX(-${currentIndex * 100}%)`;
    }

    function showNextImage() {
        setCurrentImage((currentIndex + 1) % images.length);
    }

    function showPrevImage() {
        setCurrentImage((currentIndex - 1 + images.length) % images.length);
    }

    document.getElementById('next').addEventListener('click', showNextImage);
    document.getElementById('prev').addEventListener('click', showPrevImage);

    setInterval(showNextImage, 5000); // Change image every 5 seconds
</script>