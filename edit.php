<!DOCTYPE html>
<html>
<head>
<title>Update all records from Database</title>
</head>
<body>
<?php
include 'connection.php'; ?>
<?php
$code=$_GET['id'];
$sql= "select * from product where id='$code'";
$qryl = mysqli_query($con,$sql);
$data = mysqli_fetch_array($qryl);
if (isset($_POST['update'])) {
$productname = $_POST['productname'];
$color = $_POST['color'];
$price = $_POST['price'];
$sqli="update products set productname='$productname', color='$color', price='$price' where id='$code'";
$edit=mysqli_query($con,$sqli);
if($edit) {
mysqli_close ($con);
header("location:productdetails.php");
}
}
?>
<h3> Update Data </h3>
<form method="post"> <input type="text" name="productname" value="<?php echo $data['productname'] ?>" placeholder= "Enter product name" required />
<input type="text" name="color" value="<?php echo $data['color'] ?>" placeholder= "Enter color" required /> <input type="text" name="price" value="<?php echo $data['price'] ?>" placeholder= "Enter price" required />
<input type="submit" name="update" value="Edit" />
</form>
</body>
</html>