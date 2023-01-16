<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>update price</title>
</head>

<body>
    <?php

    $id = $_GET["my_id"];

    if (isset($_GET["btn"])) {

        $louk = $_GET["name_id"];
        $number = $_GET["number"];

        $data = new mysqli("localhost", "root", "", "data_image");

        $table = $data->query("UPDATE `table_price` SET `price`='$number' where id = $louk");

        if ($table >= 0) {
            print "تم التعديل";
            header("Location:indx.php");
        } else {
            print "يوجد خطا لم يتم التعديل";
        }
    }

    ?>
    <form action="" method="GET">
        <input type="text" value="<?php print $id ?>" readonly name="name_id">
        <br>
        <br>
        <input type="number" name="number">
        <br>
        <br>
        <input type="submit" name="btn">
    </form>
</body>

</html>