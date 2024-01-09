<?php
include 'Database.php';
include 'config.php';

?>

<?php

$db = new Database();

$q = "SELECT declamation_score.team_id, registration.school_name, SUM(declamation_score.total) AS total FROM declamation_score INNER JOIN registration ON declamation_score.team_id = registration.team_id GROUP BY declamation_score.team_id ORDER BY total DESC";
$dc = $db->select($q);
$q1 = "SELECT dance_score.team_id, registration.school_name, SUM(dance_score.total) AS total FROM dance_score INNER JOIN registration ON dance_score.team_id = registration.team_id GROUP BY dance_score.team_id ORDER BY total DESC";
$d = $db->select($q1);
$q2 = "SELECT singing_score.team_id, registration.school_name, SUM(singing_score.total) AS total FROM singing_score INNER JOIN registration ON singing_score.team_id = registration.team_id GROUP BY singing_score.team_id ORDER BY total DESC";
$s = $db->select($q2);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interschool - Leaderboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="shortcut icon" href="./assets/images/clipboard.svg" type="image/x-icon">
    <style>
        h1{
            font-size: 30px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* @media screen and (max-width = 600px) {
            .dcLeaderboard {
                width: 100%;
            }
            .dLeaderboard {
                width: 100%;
            }
            .sLeaderboard {
                width: 100%;
            }
            center{
                width: 100%;
            }

        } */
    </style>
</head>


<body>
    <div class="container">
        <div class="row">
              <center><img src="https://geetauniversity.edu.in/wp-content/uploads/2022/07/GU-Logo-768x349-1-removebg-preview.png" style="height:130px; width:150px" class="img-fluid pt-4 pb-3"></center>
            <h4 class="text-center">16th InterSchool Group Dance, Singing and Declamation Competition</h4>
        <div class="col-md-12">
<div class="card">
    <div class="card-header">
          <h1 class="text-center card-title">SCORE TABLE</h1>
    </div>
    <div class="card-body">
        
        <table class="table table-striped table-hover table-bordered shadow bg-light p-5 mb-5" border="1" cellspacing="0" cellpadding="10" >
        <tr>
            <th colspan="3" class="active bg-dark text-center text-white">Dancing Leaderboard</th>
        </tr>
        <tr>
            <th>Team Id</th>
            <th>School Name</th>
            <th>Total Score</th>
        </tr>
        <tr>
        <?php
        while($row = $d->fetch_assoc()) { ?>
            <td>D<?php echo $row['team_id']; ?></td>
            <td><?php echo $row['school_name']; ?></td>
            <td><?php echo $row['total']; ?></td>
        </tr>
        <?php } ?>
    </table>
    <table class="table table-striped table-hover table-bordered shadow bg-light p-5 mb-5" border="1" cellspacing="0" cellpadding="10" >
        <tr>
            <th colspan="3" class="active bg-dark text-center text-white">Singing Leaderboard</th>
        </tr>
        <tr>
            <th>Team Id </th>
            <th>School Name</th>
            <th>Total Score</th>
        </tr>
        <tr>
            <?php
        while($row = $s->fetch_assoc()) { ?>
            <td>S<?php echo $row['team_id']; ?></td>
            <td><?php echo $row['school_name']; ?></td>
            <td><?php echo $row['total']; ?></td>
        </tr>
        <?php } ?>
    </table>

        <table class="table table-striped table-hover table-bordered shadow bg-light p-5 mb-5" border="1" cellspacing="0" cellpadding="10" >
            <tr>
            <th colspan="3" class="active bg-dark text-center text-white">Declamation Leaderboard</th>
        </tr>
        <tr>
            <th>Team Id </th>
            <th>School Name</th>
            <th>Total Score</th>
        </tr>
        <tr>
            <?php
        while($row = $dc->fetch_assoc()) { ?>
            <td>DC<?php echo $row['team_id']; ?></td>
            <td><?php echo $row['school_name']; ?></td>
            <td><?php echo $row['total']; ?></td>
        </tr>
        <?php } ?>
    </table>
    </div>
    <div class="card-footer">
         <h6 class="card-title text-center">Made by Geeta Technical Hub</h6>
    </div>
</div>
      
        
    
    
    </div>
    </div>
    </div>
</body>

</html>