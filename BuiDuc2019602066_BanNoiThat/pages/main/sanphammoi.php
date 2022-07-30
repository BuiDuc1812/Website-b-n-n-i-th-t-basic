<?php
// GET id là lấy id từ bên MENU.php 
$sql_show_new = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc AND tbl_sanpham.trangthai=1 ORDER BY tbl_sanpham.id_sanpham DESC LIMIT 5";
$query_show_new = mysqli_query($connect, $sql_show_new);


?>
<section class="grid-heading">
    <h1>- STORIES -</h1>
    <div class="section-grid">
        <div class="grif-item item1">
            <img src="./images/h1.jpg" alt="" class="grid-img">
            <p class="grid-p">13 Ý Tưởng Trang Trí Nội Thất Không Gian Nhỏ Bạn Nên Ghi Nhớ</p>
            <a href="https://www.nguyenmoc.vn/13-y-tuong-trang-tri-noi-khong-gian-nho-ban-nen-ghi-nho/">READ MORE</a>
        </div>
        <div class="grif-item item2">
            <img src="./images/h3.jpg" alt="" class="grid-img">
            <p class="grid-p">Nhà Thiết Kế Nội Thất: Quách Thái Công</p>
            <a href="https://vi.wikipedia.org/wiki/Qu%C3%A1ch_Th%C3%A1i_C%C3%B4ng">READ MORE</a>
        </div>
        <div class="grif-item item3">
            <img src="./images/h4.jpg" alt="" class="grid-img">
            <p class="grid-p">50+ Mẫu Thiết Kế Phòng Ăn Đẹp Cho Chung Cư, Biệt Thự, Nhà Phố, Nhà Cấp 4</p>
            <a href="">READ MORE</a>
        </div>
        <div class="grif-item item4">
            <img src="./images/h2.jpg" alt="" class="grid-img">
            <p class="grid-p">35+ Mẫu Thiết Kế Nội Thất Phòng Ngủ Đẹp, Hiện Đại, Tiện Nghi</p>
            <a href="https://decordi.vn/noi-that-phong-ngu/">READ MORE</a>
        </div>
        <div class="grif-item item5">
            <img src="./images/h5.jpg" alt="" class="grid-img">
            <p class="grid-p">50+ Phong Cách Nội Thất Cổ Điển</p>
            <a href="http://lehenry.com/">READ MORE</a>
        </div>
    </div>
    <div class="last-list">
        <div class="shop-now">
            <h1>DG ESSENTIALS</h1>
            <button style="border: none;" >SHOP NOW</button>
        </div>
    </div>
    <h1>- VIDEO: INTERIOR DESIGN -</h1>
    <iframe width="50%" height="515px" src="https://www.youtube.com/embed/Dba3BwkszZE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</section>
<ul class="product_list">
    <h1>- SẢN PHẨM MỚI -</h1>
    <?php
    while ($row = mysqli_fetch_array($query_show_new)) {
    ?>
        <li>
            <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
                <img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
            </a>
        </li>

    <?php
    }
    ?>
</ul>