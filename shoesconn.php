<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
      mysqli_connect("localhost","root","","clothes");
          $conn=mysqli_connect("localhost","root","","clothes");
           if($conn==true)
            echo"done" ;
           else
               echo"faild";




        ?>
    </body>
</html>
