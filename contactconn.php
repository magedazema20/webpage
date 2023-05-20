<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
          $username=$_GET["name"];
          $email=$_GET["email"];
          $message=$_GET["message"];


//database
          $conn=mysqli_connect("localhost","root","","clothes");

//insret
               $stmt="INSERT INTO `contact`
                   (`name`,`email`,`message`)
                   VALUES('$username','$email','$message')";
 //result
               $result=mysqli_query($conn,$stmt);




        ?>
    </body>
</html>
