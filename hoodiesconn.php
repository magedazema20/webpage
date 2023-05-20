<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php

     
           $size=$_GET["size"];
          


//database
          $conn=mysqli_connect("localhost","root","","clothes");

//insret
               $stmt="INSERT INTO `order`
                   (`size`)
                   VALUES(`$size`)";
               //result
               $result=mysqli_query($conn,$stmt);




        ?>
    </body>
</html>
