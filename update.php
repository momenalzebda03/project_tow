<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>update image</title>
</head>

<body>

    <?php

    $id = $_GET["my_id"];

    if (isset($_POST["btn"])) {

        $iamge1 = basename($_FILES["image1"]["name"]);
        $iamge2 = basename($_FILES["image2"]["name"]);

        $data = new mysqli("localhost", "root", "", "data_image");

        $table = $data->query("UPDATE `table_iamge` SET `id`='$id',`image1`='$iamge1',`iamge2`='$iamge2' WHERE id = $id");

        if ($table >= 0) {
            print "تم تعديل الصور";
        } else {
            print "يوجد خطا لم يتم تعديل الصور";
        }
    }

    ?>

    <form action="" method="POST" enctype="multipart/form-data">
        <input type="number" placeholder="<?php print $id ?>" readonly>
        <br>
        <br>
        <input type="file" name="image1">
        <br>
        <br>
        <input type="file" name="image2">
        <br>
        <br>
        <input type="submit" name="btn">
    </form>
</body>

</html>