 <style>
     .thongtin {
         text-align: center;
         font-size: 18px;
     }
 </style>

 <h2>THÔNG TIN CÁ NHÂN</h2>
 <div class="thongtin">
     <?php
        if (isset($_SESSION['dangky'])) {
            echo 'Xin chào: ' . '<span style="color:red">' . $_SESSION['dangky'] . '</span>';
            $id = $_SESSION['dangky'];
            $sql_thongtin = "SELECT * FROM tbl_dangky WHERE taikhoan='$id' LIMIT 1";
            $query_thongtin = mysqli_query($connect, $sql_thongtin);
            while ($row = mysqli_fetch_array($query_thongtin)) {
        ?>
             <form class="try" action="" method="POST">
                 <div class="hoten">
                     <label for="">Họ và tên</label> <br>
                     <input type="text" size="50" name="hovaten" value="<?php echo $row['hovaten']  ?>">
                 </div>
                 <div class="email">
                     <label for="">Email</label> <br>
                     <input type="text" size="50" name="email" value="<?php echo $row['email']  ?>">
                 </div>
                 <div class="phone">
                     <label for="">Điện thoại</label> <br>
                     <input type="text" size="50" name="dienthoai" value="<?php echo $row['sodienthoai']  ?>">

                 </div>
                 <div class="address">
                     <label for="">Địa chỉ</label> <br>
                     <input type="text" size="50" name="diachi" value="<?php echo $row['diachi']  ?>">
                 </div>
                 <input type="submit" name="capnhat" value="Cập nhật" onclick="alert('Cập nhật thông tin khách hàng thành công')">
             </form>

     <?php
            }
        }
        ?>
 </div>
 <?php
    if (isset($_POST['capnhat'])) {
        $id = $_SESSION['dangky'];
        $tenkhachhang = $_POST['hovaten'];
        $email = $_POST['email'];
        $dienthoai = $_POST['dienthoai'];
        $diachi = $_POST['diachi'];

        $sql_update = "UPDATE tbl_dangky SET hovaten= '$tenkhachhang', sodienthoai = '$dienthoai', email = '$email', diachi = '$diachi'  WHERE taikhoan = '$id' LIMIT 1";
        $query_up = mysqli_query($connect, $sql_update);
        header('location:index.php?quanly=thongtin');
    }
    ?>