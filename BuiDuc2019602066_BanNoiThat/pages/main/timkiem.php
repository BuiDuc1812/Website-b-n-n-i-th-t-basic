<?php
if (isset($_POST['timkiem'])) {
	$tukhoa = $_POST['tukhoa'];
}
$sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc AND tbl_sanpham.tensanpham LIKE '%" . $tukhoa . "%'";
$query_pro = mysqli_query($connect, $sql_pro);

?>
<style>
    h3 {
        text-align: center;
        font-size: 26px;
    }
</style>
<h3>-Từ khoá tìm kiếm : <?php echo $_POST['tukhoa']; ?> -</h3>
<ul class="product_list">
	<?php
	while ($row = mysqli_fetch_array($query_pro)) {
	?>
		<li>
			<a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
				<img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>">
				<div class="hover">
					<p style="color: black;" ><?php echo $row['tendanhmuc'] ?></p>
					<p style="color: black;" class="title_product"><?php echo $row['tensanpham'] ?></p>
					<p class="price_product"><?php echo number_format($row['giasanpham'], 0, ',', '.') . 'vnđ' ?></p>
				</div>

			</a>
		</li>
	<?php
	}
	?>
</ul>