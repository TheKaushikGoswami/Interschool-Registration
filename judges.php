<?php
include 'Database.php';
include 'config.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Judges Panel - Interschool</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/judge_style.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <center><img src="https://geetauniversity.edu.in/wp-content/uploads/2022/07/GU-Logo-768x349-1-removebg-preview.png" style="height:130px; width:150px" class="img-fluid pt-4 pb-3"></center>
            <h4 class="text-center">16th InterSchool Group Dance, Singing and Declamation Competition</h4>
            <div class="card shadow-sm p-3 bg-light" >
                <div class="card-header bg-dark">
                    <h3 class="card-title text-center text-light">Judges Panel</h3>
                </div>
            <div class="card-body">
                <div class="buttons">
                    <a class="btn btn-primary" href="./dancing.php" id="dancing"><span style="font-size:16px">Dancing</span></a>
                    <a class="btn btn-success " href="./singing.php" id="singing"><span style="font-size:16px">Singing</span></a>
                    <a class="btn btn-warning"  href="./declamation.php" id="declamation"><span style="font-size:16px">Declamation</span></a>

                </div>
            </div>
            <div class="card-footer bg-info" align="center">
                <h6 class="card-title">Made by Geeta Technical Hub</h6>
            </div>
        </div>

         </div>
        </div>
    </div>
</body>

</html>