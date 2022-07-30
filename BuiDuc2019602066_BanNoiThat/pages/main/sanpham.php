 <h2>CHI TIẾT SẢN PHẨM</h2>
 <style>
   p{
      padding: 12px 0;
   }
 </style>
 <?php
   $sql_chitiet = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc  AND tbl_sanpham.id_sanpham='$_GET[id]' LIMIT 1";
   $query_chitiet = mysqli_query($connect, $sql_chitiet);
   while ($row_chitiet = mysqli_fetch_array($query_chitiet)) {
   ?>
    <div class="warpper_deital">
       <div class="hinhanh_sanpham">
          <img src="admincp/modules/quanlysp/uploads/<?php echo $row_chitiet['hinhanh'] ?>">
       </div>
       <form action="pages/main/giohang/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham'] ?>" method="POST"   style="display:flex">
          <div class="chitiet_sanpham" style="max-width:800px;">
             <p>DANH MỤC/<?php echo $row_chitiet['tendanhmuc'] ?></p>
             <h2 style="margin: 0;"><?php echo $row_chitiet['tensanpham'] ?></h2>
             <p>Giá: <?php echo number_format($row_chitiet['giasanpham'], 0, ',', '.') . 'VND' ?></p>
             <hr>
             <p><?php echo nl2br($row_chitiet['noidung']) ?></p>
             <hr>
             <p>Số lượng: <?php echo $row_chitiet['soluong'] ?></p>
             <p><input class="themgiohang" type="submit" name="themgiohang" value="Thêm vào giỏ hàng"></p>
          </div>
          <p style="display:inline-block; padding:125px 0 0 40px;"><?php echo nl2br($row_chitiet['tomtat']) ?></p>
       </form>
    </div>
 <?php
   }
   ?>