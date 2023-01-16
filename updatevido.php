<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>update vido</title>
</head>

<body>
    <?php

    if (isset($_POST["btn"])) {

        $vido = basename($_FILES["file"]["name"]);

        $data = new mysqli("localhost", "root", "", "data_image");

        $table = $data->query("UPDATE `table_vido` SET `vido`='$vido'");

        if ($table >= 0) {
            print "تم تعديل المقطع بنجاح";
        } else {
            print "يوجد خطا لم يتم التعديل";
        }
    }
    ?>
    <form action="" method="POST" enctype="multipart/form-data">
        <input type="file" name="file">
        <br>
        <br>
        <input type="submit" name="btn">
    </form>
</body>

</html>