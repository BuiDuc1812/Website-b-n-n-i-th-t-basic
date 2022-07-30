<?php
if (isset($_GET['dangxuat']) && $_GET['dangxuat'] == 1) {
	unset($_SESSION['dangnhap']);
	header('Location:../index.php?dangxuat=1');
}
?>
<p style="float: right;"><a style="color: red;background-color:#F5F0BB;padding:12px 20px;border-radius:15px;" href="index.php?dangxuat=1">Đăng xuất : <?php if (isset($_SESSION['dangnhap'])) {
																																							echo $_SESSION['dangnhap'];
																																						} ?></a></p>