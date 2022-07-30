<?php
$sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
$query_danhmuc = mysqli_query($connect, $sql_danhmuc);


?>
<?php
if (isset($_GET['dangxuat']) && $_GET['dangxuat'] == 1) {
    unset($_SESSION['dangky']);
}
?>
<div class="menu">
    <a href="./index.php"><img class="logo" src="./images/logo1.png" alt=""></a>
    <ul class="menu_list">
        <li> <a href="index.php?quanly=contact">LIÊN HỆ</a></li>
        <li> <a href="index.php?quanly=giohang">GIỎ HÀNG</a></li>
        <li><a href="">DANH MỤC</a>
            <ul class="menu_danhmuc">
                <?php
                while ($row_danhmuc = mysqli_fetch_array($query_danhmuc)) {

                ?>
                    <li> <a href="index.php?quanly=danhmuclist&id=<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></a></li>

                <?php
                }

                ?>
            </ul>
        </li>
        <?php
        if (isset($_SESSION['dangky'])) {
        ?>
            <li><a href="index.php?quanly=thongtin">THÔNG TIN</a></li>
            <li> <a href="index.php?dangxuat=1">ĐĂNG XUẤT</a></li>
        <?php
        } else {
        ?>
            <li> <a href="index.php?quanly=dangnhap">ĐĂNG NHẬP</a></li>
            <li> <a href="index.php?quanly=dangky">ĐĂNG KÍ</a></li>
        <?php
        }
        ?>
        <li>
    </ul>
    <Form method="POST" class="search" action="index.php?quanly=timkiem">
        <input type="text" placeholder="Nhập sản phẩm cần tìm..." name="tukhoa">
        <input type="submit" name="timkiem" value="SEARCH">
    </Form>
</div>