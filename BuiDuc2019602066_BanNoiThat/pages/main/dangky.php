<form class="try" action="" method="POST">
    <h2>ĐĂNG KÍ</h2>
    <div class="hoten">
        <label for="">Họ và tên</label><br>
        <input type="text" size="50" name="hovaten" placeholder="Họ và tên...">
    </div>
    <div class="taikhoan">
        <label for="">Tài khoản</label><br>
        <input type="text" size="50" name="taikhoan" placeholder="Tên tài khoản...">
    </div>
    <div class="matkhau">
        <label for="">Mật khẩu</label><br>
        <input type="password" size="50" name="matkhau" placeholder="Mật khẩu...">
    </div>
    <div class="res">
        <label for="">Nhập lại mật khẩu</label><br>
        <input type="password" size="50" name="rematkhau" placeholder="Nhập lại mât khẩu...">
    </div>
    <div class="email">
        <label for="">Email</label><br>
        <input type="text" size="50" name="email" placeholder="Email...">
    </div>
    <div class="phone">
        <label for="">Điện thoại</label><br>
        <input type="text" size="50" name="dienthoai" placeholder="Số điện thoại...">

    </div>
    <div class="address">
        <label for="">Địa chỉ</label><br>
        <input type="text" size="50" name="diachi" placeholder="Địa chỉ...">
    </div>
    <input type="submit" name="dangky" value="Đăng ký">
    <a href="index.php?quanly=dangnhap">Đăng nhập nếu có tài khoản</a>

</form>
<div>
    <?php
    if (isset($_POST['dangky'])) {
        $tenkhachhang = $_POST['hovaten'];
        $taikhoan = $_POST['taikhoan'];
        $matkhau = ($_POST['matkhau']);
        $rematkhau =  ($_POST['rematkhau']);
        $email = $_POST['email'];
        $dienthoai = $_POST['dienthoai'];
        $diachi = $_POST['diachi'];
        if (!$tenkhachhang || !$taikhoan || !$matkhau || !$rematkhau || !$email || !$dienthoai || !$diachi) {
            echo "<script type='text/javascript'>
                alert('Vui lòng nhập đầy đủ thông tin')
            </script>";
        } elseif ($matkhau != $rematkhau) {
            echo "<script type='text/javascript'>
            alert('Mật khẩu chưa trùng')
        </script>";
        } else {
            $sql_dangky = "INSERT INTO tbl_dangky(hovaten,taikhoan,matkhau,sodienthoai,email,diachi) VALUE('" . $tenkhachhang . "','" . $taikhoan . "','" . $matkhau . "','" . $dienthoai . "','" . $email . "','" . $diachi . "')";
            $query_dangky = mysqli_query($connect, $sql_dangky);
            if ($query_dangky) {
                echo "<script type='text/javascript'>
            alert('Đăng kí thành công')
        </script>";
                $_SESSION['dangky'] = $taikhoan;
                $_SESSION['email'] = $email;
                $_SESSION['id_khachhang'] = mysqli_insert_id($connect);
            }
        }
    }
    ?>
</div>