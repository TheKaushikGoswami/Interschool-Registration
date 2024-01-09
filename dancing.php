<?php
include 'Database.php';
include 'config.php';

?>
<?php

$db = new Database();
$query = "SELECT * FROM registration";
$read = $db->select($query);
$query1 = "SELECT * FROM judges";
$read1 = $db->select($query1);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dancing Judge Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/judge_style.css">
    <link rel="shortcut icon" href="./assets/images/user.svg" type="image/x-icon">
</head>

<body>
    <div class="container">
        <div class="row">
             <center><img src="https://geetauniversity.edu.in/wp-content/uploads/2022/07/GU-Logo-768x349-1-removebg-preview.png" style="height:130px; width:150px" class="img-fluid pt-4 pb-3"></center>
            <h4 class="text-center">16th InterSchool Group Dance, Singing and Declamation Competition</h4>
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title text-center">Dancing Competition</h3>
                    </div>
                    <div class="card-body">
                            <div id="dancingForm">
        <form action="" method="post">
            <label for="team_id">Select your Team Id:</label>
            <select name="team_id" id="team_id" class='form-control'>
                <?php if($read){ ?>
                <?php 
                     $i=0;              
                     while($row = $read->fetch_assoc()){ 
                     $i++;
                ?>
                <option value="<?php echo $row['team_id']?>">D<?php echo $row['team_id']?></option>
                <?php } ?>
                <?php }else{ ?>
                <p>Data is not Found!</p>
                <?php } ?>

            </select><br>
            <label for="judge_id">Select your Judge Id:</label>
            <select name="judge_id" id="judge_id" class='form-control'>
                <?php if($read1){ ?>
                <?php 
                     $i=0;              
                     while($row1 = $read1->fetch_assoc()){ 
                     $i++;
                ?>
                <option value="<?php echo $row1['name']?>"><?php echo $row1['name']?></option>
                <?php } ?>
                <?php }else{ ?>
                <p>Data is not Found!</p>
                <?php } ?>

            </select>
            <h4 class="pt-2 pb-2 text-center">Enter the marks in given inputs:</h4>
              <p class="text-danger" style="font-size:18px">(The value must be less than or equal to 20)</p>
            <label class="form-label" for="stage_presence">Stage Presence</label>
            <input class="form-control" type="number" id="stage_presence" name="stage_presence" required max="20">
            <label class="form-label" for="face_expression">Face Expression</label><br>
            <input class="form-control" type="number" id="face_expression" name="face_expression" required max="20">
            <label class="form-label" for="costume">Costume</label>
            <input class="form-control" type="number" id="costume" name="costume" required max="20">
            <label class="form-label" for="choreography">Choreography</label><br>
            <input class="form-control" type="number" id="choreography" name="choreography" required max="20">
            <label class="form-label" for="coordination">Coordination</label><br>
            <input class="form-control" type="number" id="coordination" name="coordination" required max="20"><br>
            <input type="submit" name="dancing_submit" id="submit">
        </form>
    </div>
                    </div>
                    <div class="card-footer">
                         <h6 class="card-title text-center">Made by Geeta Technical Hub</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php
$db = new Database();
if(isset($_POST['dancing_submit'])){
    $stage_presence  = mysqli_real_escape_string($db->link, $_POST['stage_presence']);
    $face_expression = mysqli_real_escape_string($db->link, $_POST['face_expression']);
    $costume = mysqli_real_escape_string($db->link, $_POST['costume']);
    $choreography = mysqli_real_escape_string($db->link, $_POST['choreography']);
    $coordination = mysqli_real_escape_string($db->link, $_POST['coordination']);
    $team_id = mysqli_real_escape_string($db->link, $_POST['team_id']);
    $judge_id = mysqli_real_escape_string($db->link, $_POST['judge_id']);
    $total = (int)$stage_presence*4 + (int)$face_expression*4 + (int)$costume*4 + (int)$choreography*4 + (int)$coordination*4;

    $duplicate = "SELECT * FROM dance_score WHERE team_id = '$team_id' AND judge_id = '$judge_id'";
    $check = $db->select($duplicate);

    if($stage_presence == "" || $face_expression == "" || $costume == "" || $choreography == "" || $coordination == "" || $team_id == "" || $judge_id == ""){
        $error = "Field must not be Empty !!";
    } else {
        if($check){
            $error = "This team has already been scored by this judge."; ?>

    <?php if(isset($error)){ ?>
        <script>
            alert("<?php echo $error ?>");
        </script>
    <?php } ?>
    <?php
        } else {
            $query = "INSERT INTO dance_score(`team_id`, `judge_id`, `stage_presence`, `face_expression`, `costume`, `choreography`, `coordination`,`total`) VALUES('$team_id', '$judge_id', '$stage_presence', '$face_expression', '$costume', '$choreography', '$coordination','$total')";

            $create = $db->insert($query);
        }
    }
    }

?>

</body>

</html>