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

$sql = "select password from customers where email = '".$_POST['email']."' and password = '".$_POST["pass1"]."'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  $row = $result->fetch_assoc();  
/*  $cookie_name = "user";
  $cookie_value = $row['email'] ;
  setcookie($cookie_name, $cookie_value, time() + (86400 / 24), "/");
  setcookie("fullname", $row['fullname'], time() + (86400 / 24), "/");
  setcookie("id", $row['id'], time() + (86400 / 24), "/");
*/  

if ($_POST["pass1"] == $row['password']){
	if ($_POST["pass2"] == $_POST["pass3"]){
$sql = "UPDATE customers SET password = '".md5($_POST["pass3"])."' where email = '".$_POST["email"]."'";
} else
	echo "Mat khau khong khop";
} else
	echo "Sai mat khau";
}
header('Refresh: 3;url=sua_mk.php');
$conn->close();
?>
