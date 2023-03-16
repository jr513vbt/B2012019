<?php
session_start();
?>


<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "qlbanhang";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

SESSION_DESTROY();
	echo 'Đã đăng xuất.';
  //Tro ve trang dang nhap sau 3 giay
  header('Refresh: 3;url=login.php');

$conn->close();
?>
