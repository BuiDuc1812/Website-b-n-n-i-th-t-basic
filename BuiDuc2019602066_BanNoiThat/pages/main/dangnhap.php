<?php

if (isset($_POST['dangnhap'])) {
    $taikhoan = $_POST['taikhoan'];
    $matkhau = $_POST['password'];
    $sql = "SELECT * FROM tbl_dangky ,tbl_admin WHERE (tbl_dangky.taikhoan='" . $taikhoan . "' AND tbl_dangky.matkhau='" . $matkhau . "') OR (tbl_admin.username='" . $taikhoan . "' AND tbl_admin.password='" . $matkhau . "' )  LIMIT 1";
    $row = mysqli_query($connect, $sql);
    $count = mysqli_num_rows($row);
    if ($count > 0) {
        $row_data = mysqli_fetch_array($row);
        $_SESSION['dangky'] = $row_data['taikhoan'];
        $_SESSION['email'] = $row_data['email'];
        $_SESSION['id_khachhang'] = $row_data['id_khachhang'];
        header("Location:index.php");
        if($taikhoan == 'admin'){
            $_SESSION['dangnhap'] = $taikhoan;
            header("Location:admincp/index.php");
        }
    } else {
        echo "<script type='text/javascript'>
        alert('Mật khẩu hoặc Email sai ,vui lòng nhập lại.')
    </script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style_login.css">
    <title>Login</title>
</head>

<body>

    <div class="warpper">
        <form class="try" action="" method="POST">
            <h2>ĐĂNG NHẬP</h2>
            <div class="taikhoan">
                <label for=""> Tài Khoản</label><br>
                <input type="text" name="taikhoan">
            </div>

            <div class="matkhau">
                <label for=""> Mật khẩu</label><br>
                <input type="password" name="password">
            </div>
            <div>
                <input type="submit" name="dangnhap" value="Đăng Nhập">
            </div>
        </form>
    </div>
</body>

</html>